class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.6.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "23ec69e81e4cfbc7c3e9e0c272551ccf1cbdda6c0678117f33dba6aefbcc6841"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.6.0/alter-mcp-macos-x64.tar.gz"
      sha256 "486ee00c996fb0e3b7156c81cb676a0c2ab3c520b5c28d49a3d464f77bc6b093"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.6.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "79c658025754ffbb936c1f65f05aec4bf3b16523a517cb916a365e49f7520c0f"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.6.0/alter-mcp-linux-x64.tar.gz"
      sha256 "9916ad3147c1034894a0d5186a067003a7054d9115ca98c0000d61a8d15d7540"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
