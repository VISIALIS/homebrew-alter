class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.15.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.0/alter-mcp-1.15.0-macos-arm64.tar.gz"
      sha256 "7e44743fd345eccb23e7520f705779b2eca04f4e067cf3a47b1b4451c3d75e74"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.0/alter-mcp-1.15.0-macos-x64.tar.gz"
      sha256 "da6473c08b7ca9f2553bb39c37701144c217300058ba7d1e904f299853018b25"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.0/alter-mcp-1.15.0-linux-arm64.tar.gz"
      sha256 "6b7a25a4a30a8fee6f229a8d8c119c368d68407640bed912506f60ffc74a9b71"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.15.0/alter-mcp-1.15.0-linux-x64.tar.gz"
      sha256 "02802255012664adb7097e496335b7c73983b84e9e3e0995cf241c75be312aa3"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
