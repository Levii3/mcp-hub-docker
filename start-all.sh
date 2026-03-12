#!/bin/sh

server-filesystem /mnt/host --port 5001 &
server-git /mnt/host --port 5002 &
server-memory --port 5003 &
server-sequential-thinking --port 5004 &

wait
