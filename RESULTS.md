# Messenger Carousel Test — Results Log

## Test 1 — Text test (done ✅)
- Date: (today)
- Page: ZayBot 1129777706894309
- Recipient PSID: 27674709148807606
- Method: facebook_send_message tool
- Result: SUCCESS, message_id m_DbR263yMS9QyvhTYodpyAdKI6k4RAdQsDHW6G2eW9TvmF5tULTsJa0UiiarXJrkjen4d_RZtVxpXUJflCnIVMQ
- Note: connector အရင်ပျက်ဖူးတယ် (Composio connectors not enabled) → နောက်တစ်ကြိမ်ပြန်စမ်းတော့အောင်တယ်

## Test 2 — Carousel (Generic Template) — PENDING
- Payload: carousel_payload.json
- Command: send_carousel.bat YOUR_PAGE_TOKEN
- Expected: Messenger မှာ 3 cards + ခလုပ်ပေါ်ရမယ်
- Result: (pending — token copy ပြီးမှ run)

## Test 3 — Postback handling — PENDING
- Payloads: ZAYBOT_STARTER / ZAYBOT_BUSINESS / ZAYBOT_PRO
- Needs: webhook (Render n8n URL)
- Result: (pending)

## Hosting decision — PENDING
- Temp: Render (sleep issue → test only)
- Next: Fly.io sin / Hetzner Singapore
