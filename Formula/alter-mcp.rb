class AlterMcp < Formula
  desc "MCP server for Claude Desktop/Code - multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.9.0/alter-mcp-macos-arm64.tar.gz"
      sha256 "b993586f452487bec573f81a19bce6ec114800378354f7db1b0b4f31fceb6a6a"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.9.0/alter-mcp-macos-x64.tar.gz"
      sha256 "e60f42454637e781bf5928c5cd43f135d6a6ceabd57ce811b175a1bd0741e3bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.9.0/alter-mcp-linux-arm64.tar.gz"
      sha256 "e6a8da6d91c88962a74886371a1eeaf2dc01b2ec187c7ff8e3f97aa39b8847df"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.9.0/alter-mcp-linux-x64.tar.gz"
      sha256 "8bcf4f1a104fd2167b62cd42a43ac272e235d0d41a9e3d6e11b08d4316183daa"
    end
  end

  def install
    bin.install "alter-mcp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-mcp --version")
  end
end
