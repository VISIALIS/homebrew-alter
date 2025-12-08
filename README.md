# Alter Homebrew Tap

Official Homebrew tap for Alter CLI and MCP Server binaries.

## What is this?

This repository contains:

- **Homebrew formulas** for easy installation of Alter tools
- **Pre-compiled binaries** for macOS (ARM64)

## Installation

### Add the tap

```bash
brew tap VISIALIS/alter
```

### Install tools

```bash
# Install Alter CLI
brew install alter-cli

# Install Alter MCP Server
brew install alter-mcp
```

### Verify installation

```bash
alter-cli --version
alter-mcp --version
```

## Available Tools

### Alter CLI

Command-line interface for blockchain address classification and analysis.

```bash
alter-cli classify 0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb
```

### Alter MCP Server

Model Context Protocol server for AI agents integration.

```bash
alter-mcp
```

## MCP Client Configuration

After installing `alter-mcp`, configure your AI assistant to use it.
Each client has its own configuration format and location.

### Claude Code (CLI)

**Config file**: `~/.config/claude-code/mcp.json`

```json
{
  "mcpServers": {
    "alter": {
      "command": "/opt/homebrew/bin/alter-mcp",
      "env": {
        "ALTER_USE_PUBLIC_RPC": "true"
      }
    }
  }
}
```

### OpenAI Codex (CLI)

**Config file**: `~/.codex/config.toml`

```toml
[mcp_servers.alter]
command = "/opt/homebrew/bin/alter-mcp"
env = { "ALTER_USE_PUBLIC_RPC" = "true", "MCP_COMPAT_CLIENT" = "codex" }
```

### Claude Desktop

**Config file**: `~/Library/Application Support/Claude/claude_desktop_config.json`

```json
{
  "mcpServers": {
    "alter": {
      "command": "/opt/homebrew/bin/alter-mcp",
      "env": {
        "ALTER_USE_PUBLIC_RPC": "true"
      }
    }
  }
}
```

### ChatGPT Desktop (macOS)

**Config file**: `~/Library/Application Support/ChatGPT/mcp.json`

```json
{
  "mcpServers": {
    "alter": {
      "command": "/opt/homebrew/bin/alter-mcp",
      "env": {
        "ALTER_USE_PUBLIC_RPC": "true",
        "MCP_COMPAT_CLIENT": "chatgpt"
      }
    }
  }
}
```

### Cursor IDE

**Config file**: `~/.cursor/mcp.json`

```json
{
  "mcpServers": {
    "alter": {
      "command": "/opt/homebrew/bin/alter-mcp",
      "env": {
        "ALTER_USE_PUBLIC_RPC": "true",
        "MCP_COMPAT_CLIENT": "cursor"
      }
    }
  }
}
```

### Grok CLI

**Config file**: `~/.grok/config.toml` (if TOML-based) or `~/.grok/mcp.json`

```toml
# TOML format
[mcp_servers.alter]
command = "/opt/homebrew/bin/alter-mcp"
env = { "ALTER_USE_PUBLIC_RPC" = "true" }
```

```json
// JSON format
{
  "mcpServers": {
    "alter": {
      "command": "/opt/homebrew/bin/alter-mcp",
      "env": {
        "ALTER_USE_PUBLIC_RPC": "true"
      }
    }
  }
}
```

## Environment Variables

| Variable | Description | Default |
|----------|-------------|---------|
| `ALTER_USE_PUBLIC_RPC` | Use public RPC endpoints instead of private | `false` |
| `MCP_COMPAT_CLIENT` | Client compatibility mode (`codex`, `chatgpt`, `cursor`, `claude`) | auto-detect |
| `MCP_DEBUG_FILE` | Path to debug log file (for troubleshooting) | none |

### Debug Mode

To troubleshoot MCP communication issues, enable debug logging:

```json
{
  "mcpServers": {
    "alter": {
      "command": "/opt/homebrew/bin/alter-mcp",
      "env": {
        "ALTER_USE_PUBLIC_RPC": "true",
        "MCP_DEBUG_FILE": "/tmp/alter-mcp-debug.log"
      }
    }
  }
}
```

Then check the log file for JSON-RPC frames:

```bash
tail -f /tmp/alter-mcp-debug.log
```

## MCP Tools Available

Once configured, your AI assistant will have access to:

| Tool | Description |
|------|-------------|
| `classify_address` | Classify a single EVM address (wallet, contract, token, etc.) |
| `classify_batch` | Classify multiple addresses in one optimized request (up to 200) |

### Example Usage

Ask your AI assistant:

> "Classify the address 0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48"

The assistant will use the `classify_address` tool and return detailed information about the address type, token standards, and network presence.

## Updating

```bash
brew update
brew upgrade alter-cli alter-mcp
```

## Uninstalling

```bash
brew uninstall alter-cli alter-mcp
brew untap VISIALIS/alter
```

## Troubleshooting

### Checksum mismatch error

If you encounter a checksum error during installation:

```text
Error: Formula reports different checksum: ...
```

This happens when Homebrew has cached an old version of the formula. Fix it by updating the tap first:

```bash
brew update
brew reinstall alter-cli alter-mcp
```

### Version mismatch after update

If `--version` shows an old version after upgrading, force a reinstall:

```bash
brew reinstall alter-cli alter-mcp
```

### Clear Homebrew cache

For persistent issues, clear the download cache:

```bash
brew cleanup -s alter-cli alter-mcp
brew reinstall alter-cli alter-mcp
```

### MCP "Transport closed" error

If your AI client shows "Transport closed" or connection errors:

1. Verify the binary path: `which alter-mcp`
2. Test manually: `echo '{"jsonrpc":"2.0","id":1,"method":"initialize","params":{}}' | alter-mcp`
3. Enable debug mode (see above) and check the log
4. Try adding `MCP_COMPAT_CLIENT` for your specific client

## About Alter

**Alter answers the question: "What is this blockchain address?"**

When analyzing DeFi transactions, auditing smart contracts, or investigating on-chain activity, you need to quickly identify what you're looking at. Is it a wallet? A token contract? A multisig? A bridge?

Alter classifies any EVM address and tells you:

- **What it is**: Wallet, contract, ERC-20 token, NFT collection, proxy, multisig, bridge protocol, DEX...
- **What it does**: For tokens, detects behaviors like rebasing, wrapping, governance, transfer restrictions
- **Where it exists**: Multi-chain support (Ethereum, Gnosis Chain, more coming)

### Why Alter?

- **Speed**: Batch classify hundreds of addresses in seconds
- **Accuracy**: Deep inspection of bytecode and on-chain state
- **Integration**: Works with your AI assistant via MCP, or standalone via CLI

### Links

- **Source**: [VISIALIS](https://github.com/VISIALIS) (private repositories)
- **Homebrew Tap**: [VISIALIS/homebrew-alter](https://github.com/VISIALIS/homebrew-alter)
- **Issues**: [Report a bug](https://github.com/VISIALIS/homebrew-alter/issues)

## Automated Deployment

This repository is automatically updated by GitHub Actions when new versions are released.

---

Maintained by the Alter team
