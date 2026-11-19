const std = @import("std");
const Aes = std.crypto.core.aes.Aes128;
const base64 = std.base64.standard;
const Allocator = std.mem.Allocator;
const key: [16]u8 = "Bar12345Bar12345".*;
const iv: [16]u8 = "sayangsamakhanza".*;

fn encrypt(allocator: Allocator, input: []const u8) ![]const u8 {
    const padding: u8 = @intCast(16 - input.len % 16);
    const ciphertext = try allocator.alloc(u8, input.len + padding);
    const aes = Aes.initEnc(key);
    var previous = iv;
    var offset: usize = 0;
    while (offset < ciphertext.len) : (offset += 16) {
        var block: [16]u8 = undefined;
        for (&block, previous, 0..) |*byte, prior, index| {
            const position = offset + index;
            byte.* = prior ^ if (position < input.len) input[position] else padding;
        }
        aes.encrypt(&previous, &block);
        ciphertext[offset..][0..16].* = previous;
    }
    const output = try allocator.alloc(u8, base64.Encoder.calcSize(ciphertext.len));
    return base64.Encoder.encode(output, ciphertext);
}

fn decrypt(allocator: Allocator, input: []const u8) ![]const u8 {
    if (input.len == 0 or input.len % 4 != 0) return error.InvalidInput;
    const len = try base64.Decoder.calcSizeForSlice(input);
    if (len == 0 or len % 16 != 0) return error.InvalidInput;
    const data = try allocator.alloc(u8, len);
    try base64.Decoder.decode(data, input);

    const aes = Aes.initDec(key);
    var previous = iv;
    var offset: usize = 0;
    while (offset < data.len) : (offset += 16) {
        const block = data[offset..][0..16].*;
        var clear: [16]u8 = undefined;
        aes.decrypt(&clear, &block);
        for (data[offset..][0..16], clear, previous) |*byte, value, prior| {
            byte.* = value ^ prior;
        }
        previous = block;
    }
    const padding = data[data.len - 1];
    if (padding == 0 or padding > 16) return error.InvalidInput;
    const end = data.len - padding;
    for (data[end..]) |byte| {
        if (byte != padding) return error.InvalidInput;
    }
    return data[0..end];
}

fn readLine(allocator: Allocator, input: *std.Io.Reader) !?[]const u8 {
    var line: std.ArrayList(u8) = .empty;
    while (true) {
        const byte = input.takeByte() catch |err| switch (err) {
            error.EndOfStream => {
                if (line.items.len == 0) return null;
                break;
            },
            else => return err,
        };
        if (byte == '\n') break;
        try line.append(allocator, byte);
    }
    if (line.items.len != 0 and line.items[line.items.len - 1] == '\r') _ = line.pop();
    return line.items;
}

pub fn main() !void {
    var input_buffer: [4096]u8 = undefined;
    var output_buffer: [4096]u8 = undefined;
    var stdin = std.fs.File.stdin().readerStreaming(&input_buffer);
    var stdout = std.fs.File.stdout().writerStreaming(&output_buffer);
    const input = &stdin.interface;
    const output = &stdout.interface;

    while (true) {
        var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
        defer arena.deinit();
        const allocator = arena.allocator();
        try output.writeAll("\n=== Khanza Encrypt / Decrypt ===\n[1] Encrypt\n[2] Decrypt\n[0] Exit\nPilihan: ");
        try output.flush();
        const choice = (try readLine(allocator, input)) orelse break;
        if (std.mem.eql(u8, choice, "0")) break;
        const do_encrypt = std.mem.eql(u8, choice, "1");
        if (!do_encrypt and !std.mem.eql(u8, choice, "2")) {
            try output.writeAll("Pilihan tidak valid. Masukkan 1, 2, atau 0.\n");
            continue;
        }
        try output.writeAll("Paste teks lalu tekan Enter: ");
        try output.flush();
        const value = (try readLine(allocator, input)) orelse break;
        const result = if (do_encrypt) encrypt(allocator, value) else decrypt(allocator, value);
        if (result) |bytes| {
            try output.print("\nHasil (silakan salin):\n{s}\n", .{bytes});
        } else |err| {
            if (err == error.OutOfMemory) return err;
            try output.writeAll("Input tidak valid atau dekripsi gagal. Periksa teks dan coba lagi.\n");
        }
    }
    try output.flush();
}
