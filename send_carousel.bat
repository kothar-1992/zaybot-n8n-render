@echo off
REM ZayBot Messenger Carousel real-test sender
REM Usage: send_carousel.bat YOUR_PAGE_TOKEN
REM Token ကို chat/repo ထဲမသိမ်းပါနဲ့ — command line argument အဖြစ်ပဲပေးပါ
setlocal
if "%~1"=="" (
  echo Usage: send_carousel.bat YOUR_PAGE_TOKEN
  exit /b 1
)
set TOKEN=%~1
curl -s -X POST "https://graph.facebook.com/v25.0/me/messages?access_token=%TOKEN%" -H "Content-Type: application/json" -d @carousel_payload.json
echo.
endlocal
