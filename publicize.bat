.\Utilities\NStrip\NStrip.exe -p -n -d %1 -cg --cg-exclude-events --unity-non-serialized .\Packages\KSP2_x64\Ksp2Redux.dll .\Ksp2Redux.tmp
if %ERRORLEVEL% NEQ 0 (
    echo Error: Previous command failed. Exiting.
    exit /b %ERRORLEVEL%
)
del .\Packages\KSP2_x64\Ksp2Redux.dll
move .\Ksp2Redux.tmp .\Packages\KSP2_x64\Ksp2Redux.dll