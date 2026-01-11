# Homebrew Alter Tap

Official Homebrew tap for Alter - Multi-chain EVM address intelligence tools.

## 🚀 Available Products

### Alter Desktop 🖥️

**Visual exploration and relationship mapping for blockchain addresses**

Discover the story behind blockchain addresses through visual exploration and relationship mapping. Designed for non-technical users who want to understand blockchain interactions through an intuitive graphical interface.

- **Target audience**: Analysts, investigators, curious users
- **Interface**: Flutter desktop app with visual navigation
- **Platform support**: macOS only
- **Distribution channels**: Homebrew Cask, Mac App Store, Direct Download (DMG)

```bash
brew install --cask alter
```

> ⚠️ **Installation Conflict Warning**
>
> The Homebrew Cask version conflicts with the Mac App Store version.
> Both install to: `/Applications/Alter.app`
>
> **Choose ONE installation method:**
>
> - **Homebrew Cask**: `brew upgrade alter` for updates
> - **Mac App Store**: Automatic updates
>
> For detailed instructions, see [Installation Conflicts](#installation-conflicts) below.

### Alter CLI 🛠️

**Multi-chain EVM address classifier for developers and automation pipelines**

Command-line tool for classifying and analyzing blockchain addresses across 30+ EVM-compatible chains. Built for developers who need fast, scriptable address intelligence.

- **Target audience**: Developers, DevOps, automation engineers
- **Interface**: Terminal-based with rich formatting
- **Platform support**: macOS (Intel/ARM64), Linux (x64/ARM64)
- **Use cases**: CI/CD pipelines, scripts, batch processing

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

### Alter MCP 🤖

**MCP server exposing multi-chain EVM address intelligence to Claude AI and LLMs**

Model Context Protocol server that brings address classification capabilities to Claude and other LLMs. Perfect for AI-assisted blockchain analysis workflows.

- **Target audience**: AI engineers, researchers, LLM power users
- **Interface**: MCP protocol (Claude Desktop, custom MCP clients)
- **Platform support**: macOS (Intel/ARM64), Linux (x64/ARM64)
- **Use cases**: Claude-assisted investigations, conversational blockchain queries

```bash
brew install alter-mcp
```

**Quick start:**

1. Install the MCP server:

   ```bash
   brew install alter-mcp
   ```

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

3. Restart Claude Desktop. The following tools will be available:
   - `classify_address`: Classify EVM addresses
   - `enrich_kyc`: Get KYC/entity information
   - `get_chains`: List supported chains
   - `search_chains`: Search chains by name

## 📦 Installation

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

## 🔄 Updates

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

## 🗑️ Uninstallation

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

## ⚠️ Installation Conflicts

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
| **Direct DMG** | Manual download | One-time installs | [GitHub Releases](https://github.com/VISIALIS/phoenix_0/releases/latest) |

### Switching Between Versions

**From Homebrew → App Store:**
```bash
# 1. Uninstall Homebrew version
brew uninstall --cask alter
brew cleanup

# 2. Install from Mac App Store
open "https://apps.apple.com/app/alter/..."
```

**From App Store → Homebrew:**
```bash
# 1. Delete App Store version
rm -rf /Applications/Alter.app

# 2. Install Homebrew version
brew install --cask alter
```

**From Direct DMG → Homebrew:**
```bash
# 1. Delete manually installed version
rm -rf /Applications/Alter.app

# 2. Install Homebrew version
brew install --cask alter
```

### Checking Your Current Installation

```bash
# Check if managed by Homebrew
brew list --cask | grep alter

# Check code signature (identifies source)
codesign -dv /Applications/Alter.app 2>&1 | grep Authority

# Output interpretation:
# - "Apple Distribution" = Mac App Store version
# - "Developer ID Application" = Homebrew or Direct DMG version

# Check for App Store receipt
ls /Applications/Alter.app/Contents/_MASReceipt/
# If exists → App Store version
```

### User Data Location

**Important**: Your data is preserved when switching between installation methods.

All versions use the same data directories:
- `~/Library/Application Support/com.visialis.alter`
- `~/.alter/`

To completely remove all data:
```bash
# Uninstall app first
brew uninstall --cask alter  # or delete from Applications

# Then remove data
rm -rf ~/Library/Application\ Support/com.visialis.alter
rm -rf ~/Library/Caches/com.visialis.alter
rm -rf ~/Library/Logs/com.visialis.alter
rm -rf ~/Library/Preferences/com.visialis.alter.plist
rm -rf ~/Library/Saved\ Application\ State/com.visialis.alter.savedState
rm -rf ~/.alter
```

## 🌍 Platform Support Matrix

| Product | macOS Intel | macOS ARM64 | Linux x64 | Linux ARM64 |
|---------|-------------|-------------|-----------|-------------|
| **Desktop** | ✅ | ✅ | ❌ | ❌ |
| **CLI** | ✅ | ✅ | ✅ | 🔄¹ |
| **MCP** | ✅ | ✅ | ✅ | 🔄¹ |

¹ ARM64 Linux support planned for future releases (requires cross-compilation setup)

## 🔗 Supported Blockchain Networks

Alter supports **30+ EVM-compatible chains**, including:

- **Layer 1**: Ethereum, BNB Chain, Avalanche C-Chain, Fantom, Cronos
- **Layer 2**: Polygon, Arbitrum, Optimism, Base, zkSync Era, Linea, Scroll
- **Sidechains**: Gnosis Chain, Celo
- **Testnets**: Sepolia, Holesky, Goerli (deprecated), and chain-specific testnets

See `alter-cli chains list` for the complete list.

## 🛠️ Advanced Usage

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

### CI/CD Integration (Skip Conflict Check)

When using Homebrew Cask in automated environments (CI/CD, scripts), you can skip the conflict warning:

```bash
# Set environment variable to skip 3-second delay
export ALTER_SKIP_CONFLICT_CHECK=1
brew install --cask alter
```

## 🐛 Troubleshooting

### Desktop app conflicts

**Problem**: "I have both the Homebrew and App Store versions installed."

**Solution**: Choose one and uninstall the other using the instructions in [Switching Between Versions](#switching-between-versions).

### MCP server not appearing in Claude

**Problem**: "Claude doesn't show Alter tools after installation."

**Solution**:

1. Verify installation: `which alter-mcp`
2. Test server manually: `alter-mcp` (should output MCP protocol messages)
3. Check config path: `~/Library/Application Support/Claude/claude_desktop_config.json`
4. Restart Claude Desktop completely (Cmd+Q, then reopen)

### Linux: "command not found" after installation

**Problem**: Homebrew binaries not in PATH.

**Solution**: Add Homebrew to your PATH:

```bash
# Add to ~/.bashrc or ~/.zshrc
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
source ~/.bashrc
```

### Brew audit warnings

**Problem**: `brew audit` reports warnings when contributing formulas.

**Solution**: Our formulas are automatically validated in CI. If you encounter issues:

```bash
# Auto-fix style issues
brew style --fix Formula/alter-cli.rb

# Audit with strict rules
brew audit --strict Formula/alter-cli.rb
```

## 📚 Documentation

- **Main Repository**: [VISIALIS/phoenix_0](https://github.com/VISIALIS/phoenix_0)
- **CLI Documentation**: [docs/cli/README.md](https://github.com/VISIALIS/phoenix_0/tree/main/docs/cli)
- **MCP Documentation**: [docs/mcp/README.md](https://github.com/VISIALIS/phoenix_0/tree/main/docs/mcp)
- **Desktop User Guide**: [docs/desktop/README.md](https://github.com/VISIALIS/phoenix_0/tree/main/docs/desktop)

## 📝 License

See [LICENSE](https://github.com/VISIALIS/phoenix_0/blob/main/LICENSE) in the main repository.

## 🤝 Contributing

Contributions are welcome! Please see [CONTRIBUTING.md](https://github.com/VISIALIS/phoenix_0/blob/main/CONTRIBUTING.md) for guidelines.

## 💬 Support

- **Issues**: [GitHub Issues](https://github.com/VISIALIS/phoenix_0/issues)
- **Discussions**: [GitHub Discussions](https://github.com/VISIALIS/phoenix_0/discussions)
- **Email**: support@visialis.com
