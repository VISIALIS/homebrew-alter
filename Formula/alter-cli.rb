class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.38.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.38.0/alter-cli-macos-arm64.tar.gz"
      sha256 "02d486d8d912c0e1fd99d721b70d7886ac4354d8d14588f0a11f789da5954916"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.38.0/alter-cli-macos-x64.tar.gz"
      sha256 "a26ceb1c831de3bf60bef88b6d50000130a041cc8e1c99285bfe88411ef5491c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.38.0/alter-cli-linux-arm64.tar.gz"
      sha256 "65a5db69ce9f4f1fbf518f1b0868d6b1e90ff5cd58b0aaaa3878034ed532a128"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.38.0/alter-cli-linux-x64.tar.gz"
      sha256 "c70f6c0408e610675ddcaf8e121783a6431d8a60927b57ee073997ebafd01490"
    end
  end

  def install
    bin.install "alter-cli"
    (bin/"alter").write <<~SH
      #!/bin/sh
      if [ "$1" = "mcp" ]; then
        if [ "$#" -eq 1 ] || [ "$2" = "--version" ] || [ "$2" = "-v" ] || [ "$2" = "--help" ] || [ "$2" = "-h" ] || [ "$2" = "update" ] || [ "$2" = "check-update" ]; then
          shift
          if command -v alter-mcp >/dev/null 2>&1; then
            exec alter-mcp "$@"
          fi
          echo "alter-mcp introuvable. Installez-le avec: brew install VISIALIS/alter/alter-mcp" >&2
          exit 127
        fi
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
