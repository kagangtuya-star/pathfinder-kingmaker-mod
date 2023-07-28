@echo off
set /p folder_path=请输入要删除的文件夹路径: 
if exist "%folder_path%" (
    echo 正在删除文件夹 %folder_path% 下的所有子文件夹...
    for /d %%i in ("%folder_path%\*") do (
        rd /s /q "%%i"
    )
    echo 所有子文件夹已删除。
) else (
    echo 文件夹 %folder_path% 不存在。
)
pause