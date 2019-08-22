@echo off
set COCOS_PATH=D:\CocosCreator_2.1.1\
set PROJECT_PATH=F:\cocos-projects\guobaotegong\client\
set DEBUG=true

%COCOS_PATH%CocosCreator.exe --path %PROJECT_PATH% --build "platform=web-mobile;debug=%DEBUG%"
echo "Build completed!"
echo " press any key to continue..."
pause