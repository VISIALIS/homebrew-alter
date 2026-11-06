class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.35.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.35.0/alter-cli-macos-arm64.tar.gz"
      sha256 "9706dfdf27659437a4be3ff85f61de6fbd5471b149a488a87198d364caf78bfb"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.35.0/alter-cli-macos-x64.tar.gz"
      sha256 "68bae9da4b5b35f31d0b49c7733f1f22911eda09aa688dace7a22da8e9c629b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.35.0/alter-cli-linux-arm64.tar.gz"
      sha256 "f367e77ac075a78392781ebf0008f8ae2a17ec00afdd8e003f60c866e0b4ccfd"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.35.0/alter-cli-linux-x64.tar.gz"
      sha256 "6ba50f1e69017c170c8c44af507e2bc2db1c120eb383a40f957a7d114fcc421e"
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
