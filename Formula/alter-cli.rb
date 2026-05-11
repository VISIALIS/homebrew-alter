class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.13.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.1/alter-cli-macos-arm64.tar.gz"
      sha256 "55b97ef6e6b95ce15aafae33a140133920e0f9a9a6a345dffd2cd6b04d6f877c"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.1/alter-cli-macos-x64.tar.gz"
      sha256 "94d1b2741103651e8615f3299c7dcd77670ce14757d19cf10f6c2bacb981d5c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.1/alter-cli-linux-arm64.tar.gz"
      sha256 "360a5e5a027c581ad212229e9e52a43875bcfa72ae02a10ff6707db1682c0833"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.13.1/alter-cli-linux-x64.tar.gz"
      sha256 "79b8cc02e213ed808dc7cfa2a56ef78940fa8bc8f2427954dc910cdf8ddb93a2"
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
