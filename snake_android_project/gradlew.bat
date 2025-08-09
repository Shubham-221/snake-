@ECHO OFF
SET DIR=%~dp0
SET APP_BASE_NAME=%~n0
SET CLASSPATH=%DIR%\gradle\wrapper\gradle-wrapper.jar
IF EXIST "%JAVA_HOME%\bin\java.exe" (
  SET JAVACMD=%JAVA_HOME%\bin\java.exe
) ELSE (
  SET JAVACMD=java.exe
)
"%JAVACMD%" %JAVA_OPTS% %GRADLE_OPTS% -Dorg.gradle.appname=%APP_BASE_NAME% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %*
