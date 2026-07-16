class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.22.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.22.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "531ab30220823591ff11d8dc43d3bb19c5dec5e90cff9422ddeef31bfcffa3f5"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.22.0/alter-mcp-macos-x64.tar.gz"
      sha256 "2ac03f03bec5c8e03b194fd846bfb875aea684ffa079b9beb2dd2994e958dea4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.22.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "a3b48986b8ae3494f428e721dacc53d59dc5524b66ea367ba01bb86a041bc1e9"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.22.0/alter-mcp-linux-x64.tar.gz"
      sha256 "3bf70f43e5a6583d67a33d8aa950fdf7a221a7187f52ccc9b03d8e6eeb6d3d1b"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
