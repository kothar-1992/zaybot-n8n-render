# messenger-carousel-test

Facebook Messenger Product Carousel real-test အတွက် plan + task + source များ။

## Files
- `PLAN.md` — ရည်မှန်းချက်, အဆင့်များ, success criteria
- `TASKS.md` — TODO/DOING/DONE tracker
- `carousel_payload.json` — ZayBot 3 plans (Starter/Business/Pro) Generic Carousel payload (recipient PSID: Thi Ha Wai Lwin)
- `send_carousel.bat` — `send_carousel.bat YOUR_PAGE_TOKEN` နဲ့ run (token ကို file ထဲမသိမ်းရ)
- `RESULTS.md` — test ရလဒ်မှတ်တမ်း

## Quick start
1. Token ကူး (Meta App 1502939360909882 → Messenger → ZayBot → Generate Token)
2. `send_carousel.bat <TOKEN>` run → Messenger မှာ card စစ်
3. ရလဒ်ကို RESULTS.md ထဲမှတ်
4. Render n8n + webhook ဆက် (TASKS.md ကြည့်)
