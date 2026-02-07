class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.41"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.41/alter-mcp-macos-arm64.tar.gz"
      sha256 "fe5aa817431cb028fad97a5e747f4cfbc2b58457609cbab6b0b16580fc7ad6ae"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.41/alter-mcp-macos-x64.tar.gz"
      sha256 "b39ccfe0a86bf851b01d595b53416a4e107d07883101a8b06baa7ab119c9f81d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.41/alter-mcp-linux-arm64.tar.gz"
      sha256 "68beb51be1df53a2059467eeb64ae629a2b781742b2f34d2a7c665756bbb9953"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.41/alter-mcp-linux-x64.tar.gz"
      sha256 "57ac5e146236e7ec016c1759598a712fd87fc1681dd009b1d2914838fcfdf5fa"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
