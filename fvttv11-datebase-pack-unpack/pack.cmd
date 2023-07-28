@echo off
set /p data_folder=请输入解包的json文件夹的路径（也就是解包程序最后输出的那个路径）: 
set /p packdata_folder=请输入打包后文件的输出路径（也就是你解包输入的那个路径）：
for /d %%i in ("%data_folder%\*") do (
    echo 开始打包子文件夹 "%%i" ...
    echo 打包的文件将分类储存至 %packdata_folder%
    fvtt package pack "%%~ni" --inputDirectory %data_folder%\%%~ni --outputDirectory %packdata_folder%
)
pause