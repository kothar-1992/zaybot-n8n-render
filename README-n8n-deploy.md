# Render n8n deployment for ZayBot Messenger webhook testing

## Quick Deploy (Blueprint)

1. **Create new GitHub repo** (e.g., `zaybot-n8n-render`)
2. **Push this folder** to that repo:
   ```bash
   cd D:\ZayBot_Project\messenger-carousel-test
   git init
   git add .
   git commit -m "n8n Render Blueprint for Messenger webhook test"
   git remote add origin https://github.com/<your-username>/zaybot-n8n-render.git
   git push -u origin main
   ```
3. **On Render Dashboard** → New → **Blueprint** → connect the repo
4. **Fill in required `sync: false` values**:
   - `N8N_ENCRYPTION_KEY` — generate: `openssl rand -hex 16`
   - `N8N_BASIC_AUTH_PASSWORD` — strong password for n8n UI
   - `N8N_HOST` — leave blank for first deploy, set after
   - `WEBHOOK_URL` — leave blank for first deploy, set after
5. **Deploy** → wait for "Live" (2-3 min)
6. **Copy service URL** (e.g., `https://zaybot-n8n.onrender.com`)
7. **Update env vars** in Render dashboard:
   - `N8N_HOST` = `zaybot-n8n.onrender.com`
   - `WEBHOOK_URL` = `https://zaybot-n8n.onrender.com/webhook/`
   - Redeploy
8. **Open n8n UI** at `https://zaybot-n8n.onrender.com` (login: admin / your password)
9. **Create webhook workflow** for Messenger postbacks
10. **Add UptimeRobot** (5-min HTTP ping to `https://zaybot-n8n.onrender.com/healthz`)

## Files
- `render.yaml` — Render Blueprint (Free tier, cost-safe)
- `Dockerfile.n8n` — minimal n8n image
- `.gitignore` — excludes local files

## After Deploy
- Webhook URL for Messenger: `https://zaybot-n8n.onrender.com/webhook/messenger`
- Send me this URL → I'll help wire up postback handling (T5)