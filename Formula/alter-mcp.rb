class AlterMcp < Formula
  desc "Multi-chain EVM address classifier MCP server for AI agent integration"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.37"
  license "MIT"

  on_macos do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-mcp-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "2078b1907789215c35e9d77b60e87aa9c7665cb5ea3ab2e2cb29dd4c46a3a74e"
  end

  on_linux do
    url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.37/alter-mcp-macos-arm64.tar.gz"
    if Hardware::CPU.arm?
    end
    sha256 "2078b1907789215c35e9d77b60e87aa9c7665cb5ea3ab2e2cb29dd4c46a3a74e"
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
