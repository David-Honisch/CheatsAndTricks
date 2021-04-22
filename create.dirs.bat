@echo off
set inFile=%~dp0games.csv
set outDir=%~dp0cheats
set pattern=*.ct
For /F "tokens=1 delims=;" %%a in (%inFile%) do (
	echo mkdir "%outDir%%%~pa"
	mkdir "%outDir%%%~pa"

)