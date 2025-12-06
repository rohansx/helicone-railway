# Helicone Railway Template

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app/template/YOUR_TEMPLATE_ID)

One-click deployment of [Helicone](https://github.com/Helicone/helicone) - Open source LLM observability platform for monitoring, evaluating, and experimenting with AI applications.

## Features

- Open source LLM observability and monitoring
- Request tracking and analytics
- Cost optimization insights
- AI Gateway for routing requests
- ClickHouse for fast analytics
- Built-in PostgreSQL database

## Quick Start

1. Click the "Deploy on Railway" button above
2. Wait for deployment to complete (may take 2-3 minutes)
3. Access the Helicone dashboard via your Railway URL

## Services & Ports

| Port | Service | Description |
|------|---------|-------------|
| 3000 | Web UI | Main dashboard |
| 8585 | Jawn | AI Gateway |
| 5432 | PostgreSQL | Database |
| 8123 | ClickHouse HTTP | Analytics queries |
| 9000 | ClickHouse Native | Native protocol |

## Using the AI Gateway

To route your LLM requests through Helicone:

```bash
curl -X POST https://your-railway-url:8585/v1/gateway/oai/v1/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer sk-your-openai-key" \
  -H "Helicone-Auth: Bearer your-helicone-api-key" \
  -d '{
    "model": "gpt-4o-mini",
    "prompt": "Hello, world!",
    "max_tokens": 100
  }'
```

## Environment Variables

| Variable | Default | Description |
|----------|---------|-------------|
| `PORT` | `3000` | Main web UI port |

## Links

- [Helicone GitHub](https://github.com/Helicone/helicone)
- [Helicone Documentation](https://docs.helicone.ai/)
- [Self-Hosting Guide](https://docs.helicone.ai/getting-started/self-host/docker)
