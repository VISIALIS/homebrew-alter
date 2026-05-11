class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.4/alter-mcp-macos-arm64.tar.gz"
      sha256 "cc3aed5aa46a3f07ff36c5b040620e7c6ba5359923942ed0013dcad3b3b5e6e3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.4/alter-mcp-macos-x64.tar.gz"
      sha256 "9ad6f4e1f79faf5ef7e105eb1eeac790c3709d1b3b88c3c5d53dd21fa4a7a4a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.4/alter-mcp-linux-arm64.tar.gz"
      sha256 "0289cc09f00487f49622f8ceadd475295f98dd2c2df2eba7fdc252fd60c0d1d3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.4/alter-mcp-linux-x64.tar.gz"
      sha256 "c75c2f21c03ebcd9bbaa6beb425b4cf133837951d19596470f6b5e34222b9bf6"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
