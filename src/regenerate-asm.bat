@echo off
setlocal
cd /d "%~dp0"
if not defined ZIG_EXE set "ZIG_EXE=zig"
"%ZIG_EXE%" c++ -target x86_64-windows-gnu -std=c++17 -O2 -g0 -S -masm=intel main.cpp -o main-x64.s
exit /b %errorlevel%
