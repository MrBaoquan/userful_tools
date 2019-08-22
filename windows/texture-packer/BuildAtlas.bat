@echo off

set RootDir=%cd%
set outputDirName=output
set BuildPath=%RootDir%\%outputDirName%\

for /f "delims=" %%i in ('dir /s /ad /b .\') do (
	if %%~ni neq output (
		TexturePacker --data %BuildPath%%%~ni.plist --format cocos2d-x --sheet %BuildPath%%%~ni.png %%i
	)
)