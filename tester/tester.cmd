@echo Run Tester for NexgoCloudAPI ...

@echo off
set ZIP=
2>NUL ( for /F %%i in ('dir /B ^"tester-*.zip^"') do set ZIP=%%i )
if /i "%ZIP%"=="" echo Not found Tester! & goto end:

start /b java --enable-preview -cp "%ZIP%;libs\*" com.nexgo.cloud.demo_gui.DemoMain

:end
