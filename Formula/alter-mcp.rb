class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.11.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "ec26e4928da35cea27729ac046124a23cb1fccd3accb200b1f59ef746cf7221b"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.1/alter-mcp-macos-x64.tar.gz"
      sha256 "156affb769024b14fd3f080842a98309c33d01ea66321387a539dd8e918f674d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.1/alter-mcp-linux-arm64.tar.gz"
      sha256 "430e08279952a8e951851a20faac4cf7844f62a3db0c1ef2ba56c81ece967740"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.11.1/alter-mcp-linux-x64.tar.gz"
      sha256 "daecdddaa646a662579aa2779772df3fa3116e35ddd48cc82ff7891d1dbfa873"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
