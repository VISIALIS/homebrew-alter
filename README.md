# Homebrew Alter Tap

Official Homebrew tap for Alter - Multi-chain EVM address intelligence tools.

## Quick Install

```bash
# Add the tap
brew tap VISIALIS/alter

# Install products
brew install --cask alter    # Desktop app (macOS)
brew install alter-cli       # CLI tool (macOS + Linux)
brew install alter-mcp       # MCP server for Claude (macOS + Linux)
```

## Table of Contents

- [Quick Install](#quick-install)
- [Available Products](#-available-products)
  - [Alter Desktop](#alter-desktop-)
  - [Alter CLI](#alter-cli-)
  - [Alter MCP](#alter-mcp-)
- [Installation](#-installation)
- [Updates](#-updates)
- [Uninstallation](#-uninstallation)
- [Installation Conflicts](#-installation-conflicts)
- [Platform Support](#-platform-support-matrix)
- [Supported Networks](#-supported-blockchain-networks)
- [Advanced Usage](#-advanced-usage)
- [Troubleshooting](#-troubleshooting)
- [Documentation](#-documentation)

## Available Products

### Alter Desktop

**Visual exploration and relationship mapping for blockchain addresses**

Discover the story behind blockchain addresses through visual exploration and relationship mapping. Designed for non-technical users who want to understand blockchain interactions through an intuitive graphical interface.

| | |
|---|---|
| **Target audience** | Analysts, investigators, curious users |
| **Interface** | Flutter desktop app with visual navigation |
| **Platform** | macOS only |
| **Distribution** | Homebrew Cask, Mac App Store, Direct DMG |

```bash
brew install --cask alter
```

> **Note**: The Homebrew Cask version conflicts with the Mac App Store version. See [Installation Conflicts](#-installation-conflicts).

### Alter CLI

**Multi-chain EVM address classifier for developers and automation pipelines**

Command-line tool for classifying and analyzing blockchain addresses across 30+ EVM-compatible chains. Built for developers who need fast, scriptable address intelligence.

| | |
|---|---|
| **Target audience** | Developers, DevOps, automation engineers |
| **Interface** | Terminal-based with rich formatting |
| **Platform** | macOS (Intel/ARM64), Linux (x64/ARM64) |
| **Use cases** | CI/CD pipelines, scripts, batch processing |

```bash
brew install alter-cli
```

**Quick start:**

```bash
# Classify a single address
alter-cli classify 0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb

# Batch classify multiple addresses
alter-cli classify --batch addresses.txt

# Output as JSON for pipelines
alter-cli classify 0x... --format json
```

### Alter MCP

**MCP server exposing multi-chain EVM address intelligence to Claude AI and LLMs**

Model Context Protocol server that brings address classification capabilities to Claude and other LLMs. Perfect for AI-assisted blockchain analysis workflows.

| | |
|---|---|
| **Target audience** | AI engineers, researchers, LLM power users |
| **Interface** | MCP protocol (Claude Desktop, custom MCP clients) |
| **Platform** | macOS (Intel/ARM64), Linux (x64/ARM64) |
| **Use cases** | Claude-assisted investigations, conversational blockchain queries |

```bash
brew install alter-mcp
```

**Quick start:**

1. Install: `brew install alter-mcp`

2. Configure Claude Desktop (`~/Library/Application Support/Claude/claude_desktop_config.json`):

   ```json
   {
     "mcpServers": {
       "alter": {
         "command": "/opt/homebrew/bin/alter-mcp",
         "args": []
       }
     }
   }
   ```

3. Restart Claude Desktop. Available tools:
   - `classify_address`: Classify EVM addresses
   - `enrich_kyc`: Get KYC/entity information
   - `get_chains`: List supported chains
   - `search_chains`: Search chains by name

## Installation

### Prerequisites

- **macOS**: macOS 11+ (Big Sur or later)
- **Linux**: Ubuntu 20.04+, Debian 11+, or compatible (glibc 2.31+)
- **Homebrew**: Install from [brew.sh](https://brew.sh/)

### Add the Tap

```bash
brew tap VISIALIS/alter
```

### Install Products

```bash
# Desktop app (macOS only)
brew install --cask alter

# CLI tool (macOS + Linux)
brew install alter-cli

# MCP server (macOS + Linux)
brew install alter-mcp
```

## Updates

### Automatic Updates (Mac App Store version only)

If you installed Alter Desktop via the Mac App Store, updates are automatic.

### Manual Updates (Homebrew versions)

```bash
# Update tap formulas
brew update

# Upgrade Desktop app
brew upgrade --cask alter

# Upgrade CLI
brew upgrade alter-cli

# Upgrade MCP server
brew upgrade alter-mcp

# Upgrade all at once
brew upgrade
```

## Uninstallation

```bash
# Desktop app
brew uninstall --cask alter

# CLI tool
brew uninstall alter-cli

# MCP server
brew uninstall alter-mcp

# Clean up (removes old versions)
brew cleanup

# Remove tap (optional)
brew untap VISIALIS/alter
```

## Installation Conflicts

### Desktop App: Homebrew vs Mac App Store

The Alter Desktop app is distributed through **two channels**:

1. **Mac App Store** (signed with Apple Distribution certificate)
2. **Homebrew Cask** (signed with Developer ID Application certificate)

Both install to the **same location**: `/Applications/Alter.app`

This means **you can only have ONE version installed at a time**. Choose the method that best suits your workflow:

| Channel | Updates | Best for | Installation |
|---------|---------|----------|--------------|
| **Mac App Store** | Automatic | End-users, non-technical | App Store.app |
| **Homebrew Cask** | `brew upgrade` | Developers, CLI users | `brew install --cask alter` |
| **Direct DMG** | Manual download | One-time installs | [GitHub Releases](https://github.com/VISIALIS/homebrew-alter/releases/latest) |

### Switching Between Versions

**From Homebrew to App Store:**
```bash
brew uninstall --cask alter
brew cleanup
# Then install from Mac App Store
```

**From App Store to Homebrew:**
```bash
rm -rf /Applications/Alter.app
brew install --cask alter
```

### Checking Your Current Installation

```bash
# Check if managed by Homebrew
brew list --cask | grep alter

# Check code signature (identifies source)
codesign -dv /Applications/Alter.app 2>&1 | grep Authority
# - "Apple Distribution" = Mac App Store version
# - "Developer ID Application" = Homebrew or Direct DMG version
```

### User Data Location

Your data is preserved when switching between installation methods.

All versions use the same data directories:
- `~/Library/Application Support/com.visialis.alter`
- `~/.alter/`

## Platform Support Matrix

| Product | macOS Intel | macOS ARM64 | Linux x64 | Linux ARM64 |
|---------|-------------|-------------|-----------|-------------|
| **Desktop** | Yes | Yes | No | No |
| **CLI** | Yes | Yes | Yes | Yes |
| **MCP** | Yes | Yes | Yes | Yes |

## Supported Blockchain Networks

Alter supports **30+ EVM-compatible chains**, including:

- **Layer 1**: Ethereum, BNB Chain, Avalanche C-Chain, Fantom, Cronos
- **Layer 2**: Polygon, Arbitrum, Optimism, Base, zkSync Era, Linea, Scroll
- **Sidechains**: Gnosis Chain, Celo
- **Testnets**: Sepolia, Holesky, and chain-specific testnets

See `alter-cli chains list` for the complete list.

## Advanced Usage

### CLI Examples

```bash
# Classify with specific chain filter
alter-cli classify 0x... --chain ethereum

# Get detailed output with timing metrics
alter-cli classify 0x... --verbose

# Export results to file
alter-cli classify 0x... --output results.json

# Batch process with progress bar
alter-cli classify --batch large-list.txt --progress
```

### MCP Integration

**Example Claude prompt after MCP setup:**

> "Using the Alter MCP server, classify the address 0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb on Ethereum and tell me what type of contract it is."

Claude will automatically call the `classify_address` tool and provide a natural language explanation.

### CI/CD Integration

When using Homebrew Cask in automated environments, skip the conflict warning:

```bash
export ALTER_SKIP_CONFLICT_CHECK=1
brew install --cask alter
```

## Troubleshooting

### Desktop app conflicts

**Problem**: Both Homebrew and App Store versions installed.

**Solution**: Choose one and uninstall the other. See [Switching Between Versions](#switching-between-versions).

### MCP server not appearing in Claude

**Problem**: Claude doesn't show Alter tools after installation.

**Solution**:
1. Verify installation: `which alter-mcp`
2. Test server manually: `alter-mcp`
3. Check config path: `~/Library/Application Support/Claude/claude_desktop_config.json`
4. Restart Claude Desktop completely (Cmd+Q, then reopen)

### Linux: "command not found" after installation

**Problem**: Homebrew binaries not in PATH.

**Solution**:
```bash
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
source ~/.bashrc
```

## Documentation

- **Main Repository**: [VISIALIS/phoenix_0](https://github.com/VISIALIS/phoenix_0)
- **CLI Documentation**: [docs/cli](https://github.com/VISIALIS/phoenix_0/tree/main/docs/cli)
- **MCP Documentation**: [docs/mcp](https://github.com/VISIALIS/phoenix_0/tree/main/docs/mcp)
- **Desktop User Guide**: [docs/desktop](https://github.com/VISIALIS/phoenix_0/tree/main/docs/desktop)

## License

See [LICENSE](https://github.com/VISIALIS/phoenix_0/blob/main/LICENSE) in the main repository.

## Contributing

Contributions are welcome! See [CONTRIBUTING.md](https://github.com/VISIALIS/phoenix_0/blob/main/CONTRIBUTING.md).

## Support

- **Issues**: [GitHub Issues](https://github.com/VISIALIS/phoenix_0/issues)
- **Discussions**: [GitHub Discussions](https://github.com/VISIALIS/phoenix_0/discussions)
