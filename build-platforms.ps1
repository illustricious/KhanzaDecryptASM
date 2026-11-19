param(
    [string]$Zig = 'zig',
    [string[]]$Targets = @(
        'aarch64-windows-gnu', 'x86_64-windows-gnu', 'x86-windows-gnu',
        'riscv64-linux-musl', 'riscv32-linux-musl', 'x86_64-linux-musl', 'x86-linux-musl', 'aarch64-linux-musl',
        'arm-linux-musleabihf', 'loongarch64-linux-musl', 'powerpc64le-linux-musl',
        's390x-linux-musl', 'mipsel-linux-musleabihf',
        'aarch64-macos', 'x86_64-macos', 'x86_64-freebsd', 'aarch64-freebsd', 'x86_64-netbsd'
    )
)

$ErrorActionPreference = 'Stop'
$dist = Join-Path $PSScriptRoot 'dist'
$assembly = Join-Path $dist 'assembly'
New-Item -ItemType Directory -Force -Path $dist, $assembly | Out-Null

function Invoke-Zig {
    & $Zig @args
    if ($LASTEXITCODE -ne 0) { throw "Zig failed with exit code $LASTEXITCODE" }
}

$failed = @()
Push-Location $PSScriptRoot
try {
    foreach ($target in $Targets) {
        try {
            Write-Host "Building $target"
            $listing = Join-Path $assembly "$target.s"
            $binary = Join-Path $dist "khanza-decrypt-$target"
            if ($target -like '*-windows-gnu') {
                Invoke-Zig c++ -target $target -std=c++17 -O2 -g0 -S src/main.cpp -o $listing
                Invoke-Zig c++ -target $target -municode -static -O2 -g0 $listing -lbcrypt -lcrypt32 -o "$binary.exe"
            } else {
                Invoke-Zig build-exe src/portable.zig -target $target -O ReleaseSafe "-femit-bin=$binary" "-femit-asm=$listing"
            }
        } catch {
            $failed += $target
            Write-Warning "$target failed. $_"
        }
    }
} finally {
    Pop-Location
}

if ($failed.Count -gt 0) { throw "Failed targets: $($failed -join ', ')" }
