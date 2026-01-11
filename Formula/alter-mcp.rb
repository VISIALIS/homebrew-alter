class AlterMcp < Formula
  desc "Multi-chain EVM address classifier MCP server for AI agent integration"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v#{version}/alter-mcp-macos-arm64.tar.gz"
      sha256 "MACOS_ARM64_SHA256_PLACEHOLDER"
    else
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v#{version}/alter-mcp-macos-x64.tar.gz"
      sha256 "MACOS_X64_SHA256_PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v#{version}/alter-mcp-linux-arm64.tar.gz"
      sha256 "LINUX_ARM64_SHA256_PLACEHOLDER"
    else
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v#{version}/alter-mcp-linux-x64.tar.gz"
      sha256 "LINUX_X64_SHA256_PLACEHOLDER"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
