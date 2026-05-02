class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.1/alter-mcp-macos-arm64.tar.gz"
      sha256 "d48822cf48a41f2eb261f1bc661d54f984dc5ece52136a5ad4412cc6570cea16"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.1/alter-mcp-macos-x64.tar.gz"
      sha256 "5c417b0f71918f0a8950a62934bacb5439f4412e1a5affdd82122d0df576b4b9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.1/alter-mcp-linux-arm64.tar.gz"
      sha256 "2b567e7c69413204a69466bb7ea8c855e536c1e714dfc1d6cdc5c030660f1609"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.10.1/alter-mcp-linux-x64.tar.gz"
      sha256 "5289f85adfb20a4420f270257e22adcd59120dd5005e1b16742df754eafd098b"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
