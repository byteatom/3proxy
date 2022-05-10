call "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
set INCLUDE=%INCLUDE%;%~dp0\openssl1.1.1n\include
echo %INCLUDE%
set LIB=%LIB%;%~dp0\openssl1.1.1n\lib
echo.
echo %LIB% 
nmake clean /f Makefile.msvc
nmake clean /f Makefile.msvc64
mkdir bin64
nmake /f Makefile.msvc64
pause