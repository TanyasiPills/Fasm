echo off
ml64 /nologo /c /Zi /Cp %1.asm
cl /nologo /O2 /Zi /utf-8 /EHa /Femain.exe main.cpp %1.obj
del /Q "%~dp0main.ilk"
del /Q "%~dp0main.obj"
del /Q "%~dp0main.pdb"
del /Q "%~dp0vc140.pdb"
del /Q "%~dp0%1.obj"

echo build completed