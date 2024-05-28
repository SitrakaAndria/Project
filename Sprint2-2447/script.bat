@echo off
@REM Compile Framework

set DESTINATION_DIR="C:\Users\Sitraka Andrianina\Desktop\ITU\Mr.Naina\Adriane\Adri\frame2"
set LIB_SERVLET="C:\xampp\tomcat\lib\servlet-api.jar"

if not exist "%DESTINATION_DIR%\lib" (
    mkdir "%DESTINATION_DIR%\lib"
)

REM complilation des fichiers java
cd src
javac -cp "%LIB_SERVLET%" -d ..\classes *.java

REM rendre les classes en jar
jar -cf .\framework.jar -C ..\classes .

REM envoyer le jar vers le dossier dans test
copy .\framework.jar "%DESTINATION_DIR%\lib"

echo Compilation terminée
