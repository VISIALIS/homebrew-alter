class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.7/alter-cli-macos-arm64.tar.gz"
      sha256 "de664c66f53862f6a176c3962c58beac32b1f6a61dd73b707b3575691e4c9619"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.7/alter-cli-macos-x64.tar.gz"
      sha256 "0e751e1aa74eb73e6ad5830a75ea5f84267d16dd0cea144215dee283bb5a007c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.7/alter-cli-linux-arm64.tar.gz"
      sha256 "21a9e0c371069a00c8f026efde6ea2683c9973754d0d7aa96e07332277d2bb66"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.7/alter-cli-linux-x64.tar.gz"
      sha256 "a45d4597d4dd55fdd4ddba1b6e77c730e797396718c787a1cc008f1c63f3e8fe"
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
