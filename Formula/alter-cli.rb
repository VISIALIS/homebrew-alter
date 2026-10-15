class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.32.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.0/alter-cli-macos-arm64.tar.gz"
      sha256 "73e16e01dda30526cb1154643fb0a8dd7f09779432b7a1af279b3f7dbf53e572"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.0/alter-cli-macos-x64.tar.gz"
      sha256 "6d52be5214cb3fdd045505b53867548db6e7d4af42c1e9ebd66327b5b3feec12"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.0/alter-cli-linux-arm64.tar.gz"
      sha256 "8065f820b1e60ca99062a12dd74e0b084f4a6e2ceffe3bbffc50063e1aa90be7"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.32.0/alter-cli-linux-x64.tar.gz"
      sha256 "cd076a140c2c4a59825a8e19dd2c0bb5274739bbfe0512d0fdb91a0ebc1c92e3"
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
