@echo off
rem 将资源文件 上传至OSS

rem 阿里云OSS命令行工具路径
set OSSUTIL=D:\ossutil32\ossutil32.exe

rem oss bucket name
set BUCKET=parful-minigame-res-test

rem 准备上传的资源文件夹
set RES_DIR=wechatgame\res\



%OSSUTIL% cp -r -f %RES_DIR% oss://%BUCKET%/guobao/res/
RD /S /Q %RES_DIR%
echo upload completed! press any key to exit.
ping 127.0.0.1 -n 12>nul