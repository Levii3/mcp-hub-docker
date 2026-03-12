FROM node:20-alpine

WORKDIR /usr/src/app

# Install all MCP servers globally
RUN npm install -g \
    @modelcontextprotocol/server-filesystem \
    @modelcontextprotocol/server-fetch \
    @modelcontextprotocol/server-git \
    @modelcontextprotocol/server-memory \
    @modelcontextprotocol/server-sequential-thinking

# Expose ports
EXPOSE 5001 5002 5003 5004 5005

# Copy start script
COPY start-all.sh /usr/src/app/start-all.sh
RUN chmod +x /usr/src/app/start-all.sh

# Start all MCPs
CMD ["./start-all.sh"]
