@echo off
setlocal
cd /d "%~dp0"
if not defined ZIG_EXE set "ZIG_EXE=zig"
"%ZIG_EXE%" c++ -target x86_64-windows-gnu -municode -static -O2 main-x64.s -lbcrypt -lcrypt32 -o "..\khanza-decrypt-asm.exe"
exit /b %errorlevel%
