class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.33.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.33.0/alter-cli-macos-arm64.tar.gz"
      sha256 "ae1e6d5f43f1448af7fe334951999aa76a8dbd3ed4cfd8334ab693b202f6076c"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.33.0/alter-cli-macos-x64.tar.gz"
      sha256 "0e0fb394fd47273ed23e26c11fccb9935cc4161a625d2634f5f1ab2d156287d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.33.0/alter-cli-linux-arm64.tar.gz"
      sha256 "b5e1db84a00ea40f811955d1ae0ac6e986e4d3c262e3f9ec9b77b96eb8d20530"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.33.0/alter-cli-linux-x64.tar.gz"
      sha256 "ed2303c95671d7015c361c2bd072aed9d9a5ba84017473e3efbdcbed851afaa3"
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
