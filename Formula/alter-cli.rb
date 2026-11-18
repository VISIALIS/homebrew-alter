class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.39.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.39.0/alter-cli-macos-arm64.tar.gz"
      sha256 "58a42adc54afdbc4bdc25eb3f7582a08e7b08eb5651e66bdfa9fd1a5f6b91c96"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.39.0/alter-cli-macos-x64.tar.gz"
      sha256 "d0155f23c5f428708127c826dddc493526724411c8e712b4f58c0bb6c88a5679"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.39.0/alter-cli-linux-arm64.tar.gz"
      sha256 "e7b15054d8897c439ee44b13a2da0d760b62bece4baaea588dd985be65857020"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.39.0/alter-cli-linux-x64.tar.gz"
      sha256 "b111ab54a31b2413e7eb81012d39f48269cd1c01f0e9c20dff407f136e72ed41"
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
