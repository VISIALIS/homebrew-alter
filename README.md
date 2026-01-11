# Homebrew Alter

Official Homebrew tap for Alter - Multi-chain EVM address intelligence.

## Install

```bash
brew tap VISIALIS/alter

brew install --cask alter    # Desktop app (macOS)
brew install alter-cli       # CLI (macOS/Linux)
brew install alter-mcp       # MCP server for Claude
```

## Products

### Desktop

Visual blockchain address explorer for macOS.

```bash
brew install --cask alter
```

### CLI

Command-line address classifier for developers.

```bash
brew install alter-cli

# Usage
alter-cli classify 0x742d35Cc6634C0532925a3b844Bc9e7595f0bEb
alter-cli classify --batch addresses.txt --format json
```

### MCP Server

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

## Support

Report issues at [github.com/VISIALIS/homebrew-alter/issues](https://github.com/VISIALIS/homebrew-alter/issues)
