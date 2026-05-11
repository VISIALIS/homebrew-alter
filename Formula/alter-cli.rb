class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.2/alter-cli-macos-arm64.tar.gz"
      sha256 "79edb3330e5f4af1d6f479ced25b93b848709a79d9982c737a4653b6e18946ff"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.2/alter-cli-macos-x64.tar.gz"
      sha256 "96f6fc4bbf0257a82c1e11c0cd1539df2f390c4ef4e95ecef4b0b2fde8415d48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.2/alter-cli-linux-arm64.tar.gz"
      sha256 "22651634433bb479e2bdd68a7f14cea1461f12d3b8682feb4e80f104d3a6c6b3"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.2/alter-cli-linux-x64.tar.gz"
      sha256 "50b57d46d5e89b9e877c7a261aa76a9a27304e6616d4d4948b70456130b63919"
    end
  end

  def install
    bin.install "alter-cli"
    (bin/"alter").write <<~SH
      #!/bin/sh
      if [ "$1" = "mcp" ]; then
        shift
        if command -v alter-mcp >/dev/null 2>&1; then
          exec alter-mcp "$@"
        fi
        echo "alter-mcp introuvable. Installez-le avec: brew install VISIALIS/alter/alter-mcp" >&2
        exit 127
      fi
      exec "#{bin}/alter-cli" "$@"
    SH
    chmod 0755, bin/"alter"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alter-cli --version")
    assert_match version.to_s, shell_output("#{bin}/alter --version")
  end
end
