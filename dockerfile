FROM node:20-alpine

WORKDIR /usr/src/app

# Install global dependencies
RUN npm install -g \
    @modelcontextprotocol/server-filesystem \
    @modelcontextprotocol/server-memory \
    @modelcontextprotocol/server-sequential-thinking

# Copy manager script
COPY start-manager.js .

# Expose MCP ports
EXPOSE 5001 5002 5003

CMD ["node", "start-manager.js"]
