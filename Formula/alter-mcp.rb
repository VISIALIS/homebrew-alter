class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.5/alter-mcp-macos-arm64.tar.gz"
      sha256 "65c3193894120f091219afef7fa68d7379054627810d8d235ea85e50eef89d51"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.5/alter-mcp-macos-x64.tar.gz"
      sha256 "4731745e345424c8150014f8eac4a7373183a089c9f13ea6835256dd7cc6d653"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.5/alter-mcp-linux-arm64.tar.gz"
      sha256 "6047368d0ae80ded4301ecb7e812c0c746845bd97e2ad7dda01561aa076f9e03"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.5/alter-mcp-linux-x64.tar.gz"
      sha256 "3e48dae333889bab11a37093fe8bb8355718b21dad0fa3e816a623624ed8fd44"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
