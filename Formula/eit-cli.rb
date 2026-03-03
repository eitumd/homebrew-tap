class EitCli < Formula
  desc "CLI tool for EIT services (Statuspage, JitBit, LDAP, BeyondTrust, and more)"
  homepage "https://github.com/eitumd/eit-cli"
  version "0.0.0"

  on_macos do
    on_intel do
      url "https://github.com/eitumd/eit-cli/releases/download/v0.0.0/eit-darwin-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_arm do
      url "https://github.com/eitumd/eit-cli/releases/download/v0.0.0/eit-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/eitumd/eit-cli/releases/download/v0.0.0/eit-linux-amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "eit"
  end

  test do
    assert_match "eit version", shell_output("#{bin}/eit version")
  end
end
