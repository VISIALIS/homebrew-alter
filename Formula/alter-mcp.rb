class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.15.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.2/alter-mcp-1.15.2-macos-arm64.tar.gz"
      sha256 "74c1d9d4a8a4e862ab3d64b57dfbd83ad18351f69cc43112c373547992547cce"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.2/alter-mcp-1.15.2-macos-x64.tar.gz"
      sha256 "6893a617ae5583ca62024f33d810c7bb2f560e716c3314b51dc4140c2359e985"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.2/alter-mcp-1.15.2-linux-arm64.tar.gz"
      sha256 "df2be5e418334dde6ba2b27c4edbdca47d7c1e9f9c37132cae88d3c438e71c37"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.2/alter-mcp-1.15.2-linux-x64.tar.gz"
      sha256 "1a22e8a3853056213e54470c4a914c913a9a6a45d6b620de230b49f4ea6c6868"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
