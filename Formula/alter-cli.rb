class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.0/alter-cli-macos-arm64.tar.gz"
      sha256 "110a2380074cad2dbd90985f64fd6ff59d713e8cd738a0693536107d1a94c8fd"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.0/alter-cli-macos-x64.tar.gz"
      sha256 "893e3398bc6b3d3e98776d04bb860c13b848eb6cd708a8a58e12bf20ce9a0e3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.0/alter-cli-linux-arm64.tar.gz"
      sha256 "df96e4d86a2d0f1c1f5b81c3eda611da0a47a35b031df679ae756f2341cc03b2"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.0/alter-cli-linux-x64.tar.gz"
      sha256 "6b9acb3dfab29a41ca7cf36ecc477b0979d0765960672be22217413326466dd6"
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
