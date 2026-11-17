@REM Licensed to the Apache Software Foundation (ASF) under one
@REM or more contributor license agreements.  See the NOTICE file
@REM distributed with this work for additional information
@REM regarding copyright ownership.  The ASF licenses this file
@REM to you under the Apache License, Version 2.0 (the
@REM "License"); you may not use this file except in compliance
@REM with the License.  You may obtain a copy of the License at
@REM
@REM    http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing,
@REM software distributed under the License is distributed on an
@REM "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
@REM KIND, either express or implied.  See the License for the
@REM specific language governing permissions and limitations
@REM under the License.
@REM

@if "%DEBUG%" == "" @echo off
@setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
@setlocal enabledelayedexpansion
set FILE_NAME=%~nx0
set FILE_FULL_PATH=%~f0
set DRIVE_NAME=%~d0

cd /d "%DIRNAME%"

if not exist "%MAVEN_PROJECTBASEDIR%" (
  set MAVEN_PROJECTBASEDIR=%DIRNAME%
)
@setlocal enabledelayedexpansion

set MAVEN_CMD_LINE_ARGS=%*

set MAVEN_PROJECTBASEDIR=%MAVEN_PROJECTBASEDIR%
set MAVEN_WRAPPER_JAR="%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.jar"
set MAVEN_WRAPPER_PROPERTIES="%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.properties"

if exist "%MAVEN_WRAPPER_JAR%" (
    if "%MVNW_VERBOSE%" == "true" (
        echo Found %MAVEN_WRAPPER_JAR%
    )
) else (
    if "%MVNW_VERBOSE%" == "true" (
        echo Couldn't find %MAVEN_WRAPPER_JAR%, downloading it ...
    )
    if not "%MAVEN_PROJECTBASEDIR%"=="" (
        set MAVEN_PROJECTBASEDIR=%MAVEN_PROJECTBASEDIR%
    )
    echo Downloading Maven wrapper ...
    powershell -Command "(New-Object Net.WebClient).DownloadFile('https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.2.0/maven-wrapper-3.2.0.jar', '%MAVEN_WRAPPER_JAR%')"
    if "%ERRORLEVEL%" == "0" (
        if "%MVNW_VERBOSE%" == "true" (
            echo Finished downloading Maven wrapper
        )
    ) else (
        echo.
        echo ERROR: FATAL ERROR while downloading Maven wrapper
        echo.
        exit /b 1
    )
)

@setlocal

set MAVEN_JAVA_EXE="%JAVA_HOME%\bin\java.exe"

set MAVEN_CMD_LINE_ARGS=%*

@endlocal
@endlocal

"%MAVEN_JAVA_EXE%" %MAVEN_OPTS% -classpath "%MAVEN_WRAPPER_JAR%" "-Dmaven.multiModuleProjectDirectory=%MAVEN_PROJECTBASEDIR%" org.apache.maven.wrapper.MavenWrapperMain %MAVEN_CMD_LINE_ARGS%
if %ERRORLEVEL% neq 0 goto error
goto end

:error
set ERROR_CODE=%ERRORLEVEL%

@endlocal

exit /b %ERROR_CODE%
:end
@endlocal
