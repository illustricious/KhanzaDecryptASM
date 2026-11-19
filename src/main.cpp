#include <windows.h>
#include <io.h>
#include <fcntl.h>
#include <bcrypt.h>
#include <wincrypt.h>
#include <iostream>
#include <string>
#include <vector>
#include <stdexcept>
#pragma comment(lib, "bcrypt.lib")
#pragma comment(lib, "crypt32.lib")
using Bytes = std::vector<unsigned char>;
static const unsigned char KEY[] = "Bar12345Bar12345";
static const unsigned char IV[] = "sayangsamakhanza";
static void check(NTSTATUS status) { if (status < 0) throw std::runtime_error("Operasi AES gagal atau data tidak valid."); }
struct Algorithm { BCRYPT_ALG_HANDLE h = nullptr; ~Algorithm(){if(h) BCryptCloseAlgorithmProvider(h,0);} };
struct Key { BCRYPT_KEY_HANDLE h = nullptr; ~Key(){if(h) BCryptDestroyKey(h);} };
Bytes crypt(const Bytes& input, bool encrypt) {
    Algorithm alg; Key key;
    check(BCryptOpenAlgorithmProvider(&alg.h, BCRYPT_AES_ALGORITHM, nullptr, 0));
    check(BCryptSetProperty(alg.h, BCRYPT_CHAINING_MODE, (PUCHAR)BCRYPT_CHAIN_MODE_CBC, sizeof(BCRYPT_CHAIN_MODE_CBC), 0));
    DWORD objLen=0, done=0; check(BCryptGetProperty(alg.h, BCRYPT_OBJECT_LENGTH, (PUCHAR)&objLen, sizeof(objLen), &done, 0));
    Bytes obj(objLen); check(BCryptGenerateSymmetricKey(alg.h,&key.h,obj.data(),objLen,(PUCHAR)KEY,16,0));
    unsigned char iv[16]; memcpy(iv,IV,16); DWORD n=0;
    unsigned char dummy = 0; PUCHAR data = input.empty() ? &dummy : (PUCHAR)input.data();
    auto run = encrypt ? BCryptEncrypt : BCryptDecrypt;
    check(run(key.h,data,(ULONG)input.size(),nullptr,iv,16,nullptr,0,&n,BCRYPT_BLOCK_PADDING));
    Bytes out(n); memcpy(iv,IV,16);
    check(run(key.h,data,(ULONG)input.size(),nullptr,iv,16,out.data(),n,&done,BCRYPT_BLOCK_PADDING));
    out.resize(done); return out;
}
std::wstring base64(const Bytes& b) { DWORD n=0; if(!CryptBinaryToStringW(b.data(),(DWORD)b.size(),CRYPT_STRING_BASE64|CRYPT_STRING_NOCRLF,nullptr,&n)) throw std::runtime_error("Base64 gagal."); std::wstring s(n,L'\0'); if(!CryptBinaryToStringW(b.data(),(DWORD)b.size(),CRYPT_STRING_BASE64|CRYPT_STRING_NOCRLF,s.data(),&n)) throw std::runtime_error("Base64 gagal."); s.resize(n); return s; }
Bytes unbase64(const std::wstring& s) {
    if(s.empty() || s.size()%4 != 0) throw std::runtime_error("Base64 tidak valid.");
    size_t pad=0; if(s.back()==L'=') ++pad; if(s.size()>1 && s[s.size()-2]==L'=') ++pad;
    for(size_t i=0;i<s.size();++i) { wchar_t c=s[i]; bool alpha=(c>=L'A'&&c<=L'Z')||(c>=L'a'&&c<=L'z')||(c>=L'0'&&c<=L'9')||c==L'+'||c==L'/'; if(!alpha && !(c==L'=' && i>=s.size()-pad)) throw std::runtime_error("Base64 tidak valid."); }
    DWORD n=0; if(!CryptStringToBinaryW(s.c_str(),(DWORD)s.size(),CRYPT_STRING_BASE64,nullptr,&n,nullptr,nullptr) || !n || n%16) throw std::runtime_error("Base64 atau panjang ciphertext tidak valid."); Bytes b(n); if(!CryptStringToBinaryW(s.c_str(),(DWORD)s.size(),CRYPT_STRING_BASE64,b.data(),&n,nullptr,nullptr)) throw std::runtime_error("Base64 tidak valid."); b.resize(n); return b;
}
Bytes encode(const std::wstring& s, UINT cp) { if(s.empty()) return {}; int n=WideCharToMultiByte(cp,0,s.data(),(int)s.size(),nullptr,0,nullptr,nullptr); if(!n) throw std::runtime_error("Gagal mengubah encoding teks."); Bytes b(n); WideCharToMultiByte(cp,0,s.data(),(int)s.size(),(char*)b.data(),n,nullptr,nullptr); return b; }
std::wstring decode(const Bytes& b, UINT cp) { if(b.empty()) return {}; int n=MultiByteToWideChar(cp,0,(const char*)b.data(),(int)b.size(),nullptr,0); if(!n) throw std::runtime_error("Gagal mengubah encoding teks."); std::wstring s(n,L'\0'); MultiByteToWideChar(cp,0,(const char*)b.data(),(int)b.size(),s.data(),n); return s; }
int wmain(int argc, wchar_t** argv) {
    SetConsoleCP(CP_UTF8); SetConsoleOutputCP(CP_UTF8);
    // Wide console I/O avoids dependence on the terminal code page.
    _setmode(_fileno(stdin), _O_U16TEXT); _setmode(_fileno(stdout), _O_U16TEXT);
    UINT cp=GetACP(); if(argc==2 && std::wstring(argv[1])==L"--utf8") cp=CP_UTF8;
    for (;;) {
        std::wcout << L"\n=== Khanza Encrypt / Decrypt ===\n[1] Encrypt\n[2] Decrypt\n[0] Exit\nPilihan: " << std::flush;
        std::wstring choice; if(!std::getline(std::wcin,choice)) break;
        if(choice==L"0") break;
        if(choice!=L"1" && choice!=L"2") { std::wcout << L"Pilihan tidak valid. Masukkan 1, 2, atau 0.\n"; continue; }
        std::wcout << L"Paste teks lalu tekan Enter: " << std::flush; std::wstring input; if(!std::getline(std::wcin,input)) break;
        try { std::wstring result=choice==L"1" ? base64(crypt(encode(input,cp),true)) : decode(crypt(unbase64(input),false),cp); std::wcout << L"\nHasil (silakan salin):\n" << result << L"\n"; }
        catch(const std::exception&) { std::wcout << L"Input tidak valid atau dekripsi gagal. Periksa teks dan coba lagi.\n"; }
    }
    return 0;
}


