@echo off

cls

color 2

:: set charge status is charging
adb shell dumpsys battery set status 1
adb shell dumpsys battery set status 2

:: change battery from 5% to 100%
for /L %%d in (5 1 100) do (
echo Dang sac %%d%%
adb shell dumpsys battery set level %%d
ping 127.0.0.1 -n 1 -w 500 > NUL
)

:: set charge status is full
adb shell dumpsys battery set status 3

echo ------------------------
echo ------Finished----------
echo ------------------------

pause
