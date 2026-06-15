class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.17.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.0/alter-cli-1.17.0-macos-arm64.tar.gz"
      sha256 "dc0234416b36d99b0f7d5936d1d9bca72435cb961ee5b3a8a63bab4d7d288357"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.0/alter-cli-1.17.0-macos-x64.tar.gz"
      sha256 "5298b388922de5fc222d8afb764d7a4e7e0b6693cb7fc461819066a6353cbe75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.0/alter-cli-1.17.0-linux-arm64.tar.gz"
      sha256 "69da00d658eacce21c77cd76cfe7b1fb696404869555d376694b38f486533993"
    end
    on_intel do
      url "https://github.com/VISIALIS/homebrew-alter/releases/download/v1.17.0/alter-cli-1.17.0-linux-x64.tar.gz"
      sha256 "44958a4c98bd05ca1251103d66b68845d6b88aaa905148ab3a4d10a24951385a"
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
