class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.0.43"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.43/alter-cli-macos-arm64.tar.gz"
      sha256 "30b37b3751786f449abccde89d74b4ab5ad2198301dc2e9640a870a45ce28a15"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.43/alter-cli-macos-x64.tar.gz"
      sha256 "46266eb9ae0d9fe4a6500723dcb529e19b201526e1a9fbf0a666dc405a4548c1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.43/alter-cli-linux-arm64.tar.gz"
      sha256 "af87bc6c34269f27d9f8db838ba571436eaa8fc4d8c0de9626d814623276c39f"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.0.43/alter-cli-linux-x64.tar.gz"
      sha256 "e29c1c6834f5648f40add6a48b2730891369d4ec52a3f23f9dda75afbaf11942"
    end
  end

  def install
    bin.install "alter-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
  end
end
