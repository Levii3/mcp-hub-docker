#!/bin/sh

# Filesystem MCP → full access to your home
server-filesystem /mnt/host --port 5001 &

# Fetch MCP
server-fetch --port 5002 &

# Git MCP → operate inside home folder
server-git /mnt/host --port 5003 &

# Memory MCP
server-memory --port 5004 &

# Sequential Thinking MCP
server-sequential-thinking --port 5005 &

# Keep container running
wait
