# Messenger Product Carousel Test — Plan

## Goal
Facebook Page Messenger မှာ Telegram bot လို Product + ဈေးနှုန်း + UI ခလုတ် (Generic Carousel) real-test လုပ်ရန်။
Target Page: ZayBot (1129777706894309)
Test recipient: Thi Ha Wai Lwin (PSID 27674709148807606)

## Constraints
- လိုင်းမကောင်း → lightweight steps, copy-paste ready commands
- Render Free: sleep ရှိတယ် → carousel test လောက်ပဲ (production မဟုတ်)
- Production (always-on): Oracle → Myanmar billing မရ → Fly.io sin / Hetzner
- Token security: chat ထဲ token အပြည့်မပို့ရ

## Phases
### Phase 0 — Prep (done in this folder)
- [x] messenger-carousel-test/ folder
- [ ] PLAN.md, TASKS.md, payload JSON, test script, results log

### Phase 1 — Render n8n (temporary test host)
1. Render Blueprint နဲ့ n8n deploy
2. WEBHOOK_URL env ပေး
3. UptimeRobot 5-min ping (sleep ကာကွယ်ရန်)

### Phase 2 — Carousel real test (via Page token + curl)
1. Meta App 1502939360909882 → ZayBot Page token generate
2. carousel_payload.json ပို့ → Messenger မှာ card+ခလုပ်ပေါ်မပေါ်စစ်
3. postback payloads (ZAYBOT_STARTER/BUSINESS/PRO) ပြန်ဝင်မဝင်စစ်

### Phase 3 — Decide next host
- အဆင်ပြေရင် Fly.io sin / Hetzner Singapore
- n8n.zaybot.fun DNS ပြန်ချိတ်

## Success criteria
- Messenger မှာ 3 cards (Starter/Business/Pro) + ဈေး + ရွေးမယ်/အသေးစိတ်ခလုပ်ပေါ်ရမယ်
- ခလုပ်နှိပ်ရင် postback payload webhook ဝင်ရမယ် (Phase 2.3)
