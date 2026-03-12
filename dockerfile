FROM node:20-alpine

WORKDIR /usr/src/app

RUN npm install -g \
@modelcontextprotocol/server-filesystem \
@modelcontextprotocol/server-git \
@modelcontextprotocol/server-memory \
@modelcontextprotocol/server-sequential-thinking

COPY start-all.sh .
RUN chmod +x start-all.sh

EXPOSE 5001 5002 5003 5004

CMD ["./start-all.sh"]
