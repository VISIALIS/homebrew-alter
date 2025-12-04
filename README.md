# Alter Homebrew Tap

🍺 Official Homebrew tap for Alter CLI and MCP Server binaries.

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

## About Alter

Alter is a blockchain address classification tool using Domain-Driven Design principles.

- **GitHub**: [VISIALIS/phoenix_0](https://github.com/VISIALIS/phoenix_0) (private)
- **Documentation**: Coming soon

## Automated Deployment

This repository is automatically updated by GitHub Actions when new versions are released.

---

🤖 Maintained by the Alter team
