class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "1477200d6757ca8ce932cb08b799efee9ab5a8db5450f7400a8694347f204868"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.0/alter-mcp-macos-x64.tar.gz"
      sha256 "27e8dd0161df55291921b2b237d6a83d57b8fe619a335666b9c9c36c42d1d41a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "ad3d429bebfa82a33e5b93da7dff5f8128565802046685a0c797a7aef3afa6a1"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.0/alter-mcp-linux-x64.tar.gz"
      sha256 "a8008298848e68cd62a8d5f5e738fd4131f8afb1a0a8639b47e32de32dc03ab5"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
