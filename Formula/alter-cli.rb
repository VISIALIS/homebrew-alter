class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.3/alter-cli-macos-arm64.tar.gz"
      sha256 "8f5875fab2e6e1ca6321cb2784672a4f25aed02e35bad30c17b5276aca17ef35"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.3/alter-cli-macos-x64.tar.gz"
      sha256 "9d7187ef44052c86977db8792a59582aef01989ab02eb5eba1bb5160d5ef03c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.3/alter-cli-linux-arm64.tar.gz"
      sha256 "67e24bbba017748187eea9d4bd19a546e6fcb1dbb657479d53fc02f719ac37f4"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.3/alter-cli-linux-x64.tar.gz"
      sha256 "82ad9dc9577f1ac11252754d26571d3dae24708531bcaf4be666eda953eb184e"
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
