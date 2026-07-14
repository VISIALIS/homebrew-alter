class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.20.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.20.0/alter-cli-macos-arm64.tar.gz"
      sha256 "7ba3ecbb3612fca6ecfcd1be5f89458d27ced6bc95c8f0ca57a4f90627d83549"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.20.0/alter-cli-macos-x64.tar.gz"
      sha256 "a7b5662db4f3467e0b1f8a884ed9986ed856f3e1a710c566e606ca96997f0542"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.20.0/alter-cli-linux-arm64.tar.gz"
      sha256 "f261410c0754aeb73944fcbe3952b8128cb527a3948339d9b59a0f222c8273ed"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.20.0/alter-cli-linux-x64.tar.gz"
      sha256 "e6eb03317d752320c4be8be7856827b7835f2f7ecdafcda6d74a5258058dce9f"
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
