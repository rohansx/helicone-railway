FROM helicone/helicone-all-in-one:latest

# Helicone exposes multiple ports:
# 3000 - Web UI/Dashboard
# 8585 - Jawn (AI Gateway)
# 5432 - PostgreSQL Database
# 8123 - ClickHouse Analytics
# 9000 - ClickHouse Native Interface

# Railway will use PORT env var for the main service
ENV PORT=3000

# Expose all Helicone ports
EXPOSE 3000 8585 5432 8123 9000

# Health check on the web UI
HEALTHCHECK --interval=30s --timeout=10s --start-period=120s --retries=5 \
    CMD curl -f http://localhost:3000/ || exit 1

# The base image has its own entrypoint, so we don't override CMD
