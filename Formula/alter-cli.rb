class AlterCli < Formula
  desc "CLI tool for multi-chain EVM address classification"
  homepage "https://github.com/VISIALIS/phoenix_0"
  version "1.19.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-cli-macos-arm64.tar.gz"
      sha256 "321830ceab3c229ef42c53ae2b714e0ba1b3ec67cad32cae08062bbdd8d09afe"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-cli-macos-x64.tar.gz"
      sha256 "a1322f3782961c737ee59edde8eb89d6932d4cc605b182beabfc2ed87005a5ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-cli-linux-arm64.tar.gz"
      sha256 "1b1139d4342d32a6f785af4073b32597e6d8cced450bddcd6f7f7c71faea2203"
    end
    on_intel do
      url "https://github.com/VISIALIS/alter/releases/download/v1.19.0/alter-cli-linux-x64.tar.gz"
      sha256 "1bdb1b4e8c608fbf906bfb474cc230ef7473a22a3149495287225f3915ab3c7a"
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
