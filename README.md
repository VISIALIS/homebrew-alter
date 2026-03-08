# Homebrew Alter

Official Homebrew tap for **Alter** — Multi-chain EVM address intelligence.

## Alter Ecosystem

| # | Interface | Type | Access |
|---|-----------|------|--------|
| 1 | **Alter Desktop** | macOS application | `brew install --cask alter` |
| 2 | **alter-cli** | Interactive CLI | `brew install alter-cli` |
| 3 | **alter-mcp** | MCP server (AI agents) | `brew install alter-mcp` |
| 4 | **Alter Web** | Web application | [alter.visialis.fr](https://alter.visialis.fr/) |
| 5 | **Alter Mobile** | Mobile app (iOS/Android) | [App Store](https://apps.apple.com/) / [Google Play](https://play.google.com/store) |

> This tap distributes **Desktop** (Cask in `Casks/`), **CLI** and **MCP** (Formulas in `Formula/`).
> All three are installed separately — pick what you need.

## Quick Start

```bash
# 1. Add the tap
brew tap VISIALIS/alter

# 2. Install what you need
brew install --cask alter    # Desktop app (macOS only)
brew install alter-cli       # CLI (macOS + Linux)
brew install alter-mcp       # MCP server for Claude (macOS + Linux)
```

## Products

### Alter Desktop

Visual blockchain address explorer for macOS.

```bash
brew install --cask alter
```

### alter-cli

Command-line address classifier for developers.

```bash
brew install alter-cli

# Usage
alter-cli -a 0x742d35Cc6634C0532925a3b844Bc454e4438f44e
alter-cli -a 0x742d... -a 0xa0Ee... --batch -f json
alter-cli --file addresses.txt -n ethereum -f csv -o results.csv
alter-cli --help
```

### alter-mcp

Model Context Protocol server for Claude AI integration.

```bash
brew install alter-mcp
```

Configure Claude Desktop (`~/Library/Application Support/Claude/claude_desktop_config.json`):

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

Configure Claude Code (`.mcp.json`):

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

## Current Release

**Version: 1.4.0**

| Artifact | Platform | Architecture |
|----------|----------|-------------|
| `Alter-1.4.0-macOS-Notarized.dmg` | macOS | Universal |
| `alter-cli-macos-arm64.tar.gz` | macOS | Apple Silicon |
| `alter-cli-macos-x64.tar.gz` | macOS | Intel |
| `alter-cli-linux-arm64.tar.gz` | Linux | ARM64 |
| `alter-cli-linux-x64.tar.gz` | Linux | x64 |
| `alter-mcp-macos-arm64.tar.gz` | macOS | Apple Silicon |
| `alter-mcp-macos-x64.tar.gz` | macOS | Intel |
| `alter-mcp-linux-arm64.tar.gz` | Linux | ARM64 |
| `alter-mcp-linux-x64.tar.gz` | Linux | x64 |

All artifacts are available on the [Releases page](https://github.com/VISIALIS/homebrew-alter/releases).

## Update

```bash
brew update && brew upgrade
```

## Uninstall

```bash
brew uninstall --cask alter
brew uninstall alter-cli
brew uninstall alter-mcp
brew cleanup
```

## Platform Support

| Product | macOS Intel | macOS ARM64 | Linux x64 | Linux ARM64 |
|---------|:-----------:|:-----------:|:---------:|:-----------:|
| Desktop | Yes | Yes | - | - |
| CLI | Yes | Yes | Yes | Yes |
| MCP | Yes | Yes | Yes | Yes |

## Troubleshooting

**"No developer tools installed" after `brew install`**: This warning comes from Homebrew itself, not from Alter. It does **not** affect the installation. Your app/CLI is correctly installed. To suppress it:

```bash
xcode-select --install
```

**`kMDItemVersion` returns null for Alter.app**: This is a Spotlight indexing delay, not a missing version. The version is correctly set in `Info.plist`:

```bash
# Verify version directly
defaults read /Applications/Alter.app/Contents/Info.plist CFBundleShortVersionString
# Expected: 1.4.0
```

**"Only 1 cask found"**: The tap contains 3 products across 2 directories. Use `brew search alter` after `brew tap VISIALIS/alter` to see all available packages. If your Homebrew installation has issues, try reinstalling it first (see below).

**Desktop conflicts with App Store version**: Uninstall one before installing the other.

```bash
# Check current installation source
codesign -dv /Applications/Alter.app 2>&1 | grep Authority
```

**MCP not visible in Claude**: Restart Claude Desktop (Cmd+Q, reopen).

**Linux PATH issue**:
```bash
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> ~/.bashrc
source ~/.bashrc
```

**Broken system Homebrew (Ruby crash, permission errors)**: If your system Homebrew is corrupted, reinstall it:

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

## Support

- Report issues: [github.com/VISIALIS/homebrew-alter/issues](https://github.com/VISIALIS/homebrew-alter/issues)
- Project source: [github.com/VISIALIS/phoenix_0](https://github.com/VISIALIS/phoenix_0)
