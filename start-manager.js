const { exec } = require("child_process");

const MCPs = [
  {
    name: "filesystem",
    cmd: "npx @modelcontextprotocol/server-filesystem /mnt/host --port 5001",
  },
  {
    name: "memory",
    cmd: "npx @modelcontextprotocol/server-memory --port 5002",
  },
  {
    name: "sequential-thinking",
    cmd: "npx @modelcontextprotocol/server-sequential-thinking --port 5003",
  },
];

// Start each MCP dynamically
MCPs.forEach(mcp => {
  const child = exec(mcp.cmd, (err, stdout, stderr) => {
    if (err) console.error(`${mcp.name} error:`, err);
  });

  child.stdout.pipe(process.stdout);
  child.stderr.pipe(process.stderr);

  console.log(`${mcp.name} started`);
});

console.log("All MCPs launched. Manager running...");
