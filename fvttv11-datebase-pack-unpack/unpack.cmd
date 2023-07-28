@echo off
set /p data_folder=请输入要解包的数据文件夹路径: 
for /d %%i in ("%data_folder%\*") do (
    echo 开始解包子文件夹 "%%i" ...
    echo 解包的json文件将分类储存至 %data_folder%\_data_unpack
    fvtt package unpack "%%~ni" --inputDirectory %data_folder% --outputDirectory %data_folder%\_data_unpack\%%~ni
)
pause