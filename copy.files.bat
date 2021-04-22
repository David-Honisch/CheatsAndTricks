@echo off
set inFile=%~dp0games.csv
set outDir=%~dp0cheats
set pattern=*.ct
if exist %outDir% (
  echo %outDir% exists
) else (
  echo No
  mkdir %outDir%
)
REM dir /b /s d:\games\%pattern% > %inFile%
REM dir /b /s h:\games\%pattern% >> %inFile%
For /F "tokens=1 delims=;" %%a in (%inFile%) do (
	echo copy "%%a" "%outDir%\%%~nxa"
	if exist "%outDir%%%~pa" (
		echo "%outDir%%%~pa" exists
	) else (
	echo No
		mkdir "%outDir%%%~pa"
	)
	copy "%%a" "%outDir%\%%~pa%%~nxa"

)