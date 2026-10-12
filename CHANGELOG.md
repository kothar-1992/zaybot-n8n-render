# Changelog — Messenger Carousel Test

All notable changes to this test project are documented here.

## [Unreleased]
### Planned
- Phase 1: Deploy n8n on Render via Blueprint
- Phase 2: Send carousel payload with Page token (carousel_payload.json)
- Phase 3: Verify postback handling via webhook
- Phase 4: Decide production host (Fly.io/Hetzner)

## [2026-10-11] — Initial Setup (Phase 0 Complete)
### Added
- `messenger-carousel-test/` folder structure
- `PLAN.md` — Full test plan (Phases 0–3, success criteria)
- `TASKS.md` — Task tracker (T0 DONE, T1–T6 TODO)
- `carousel_payload.json` — Valid 3-card Generic Template (Starter/Business/Pro)
- `send_carousel.bat` — One-liner curl script (`send_carousel.bat <TOKEN>`)
- `RESULTS.md` — Test log (Test 1 ✅ text message sent, Tests 2–3 pending)
- `README.md` — Quick start guide

### Security
- Removed exposed token file from D:\ root (`curl -X POST httpsgraph.facebook.co.txt` contained real Page access token)
- Token handling: env-only, never committed or shared in chat

### Verified
- Test 1: Plain text message delivered successfully (message_id `m_DbR263yMS9QyvhTYodpyAdKI6...`)
- Payload JSON validates — 3 cards, correct postback payloads (`ZAYBOT_STARTER`, `ZAYBOT_BUSINESS`, `ZAYBOT_PRO`)
- Recipient PSID `27674709148807606` confirmed working

## [2026-06-22] — Legacy Telegram Bot (D:\Telegram_Bot)
### Notes
- Old Render-deployed Telegram bot (render.yaml, bot.py, shop.db)
- Superseded by new `D:\Tg_Bot` folder with updated infra
- Not part of current Messenger carousel test

## [2026-10-12] — New Tg_Bot Folder (D:\Tg_Bot)
### Notes
- Active development folder with render.yaml, updated bot.py, handlers, CHANGELOG.md
- Separate from messenger-carousel-test; used for Telegram bot production deploy