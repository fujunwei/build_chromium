@echo off

if "%1" == "" (
  echo usage: make_zip builddir
  echo.
  echo   builddir   build output directory ^(e.g., out\Release^)
  goto :eof
)

setlocal

echo %1
echo %2
set makezip=%1\chrome\tools\build\make_zip.py
echo %makezip%
echo %AppData%
set cfg=%2\FILES.cfg
set archive=%1\chrome-win32.zip

python %makezip% %1 %cfg% %archive%
