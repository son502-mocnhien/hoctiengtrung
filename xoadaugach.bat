@echo off
setlocal enabledelayedexpansion

for %%F in (*.*) do (
    set "filename=%%~nxF"
    set "newname=!filename!"

    REM Kiểm tra nếu tên bắt đầu bằng "_"
    if "!filename:~0,1!"=="_" (
        set "newname=!filename:~1!"
        echo Renaming "%%F" to "!newname!"
        ren "%%F" "!newname!"
    )
)

endlocal
pause
