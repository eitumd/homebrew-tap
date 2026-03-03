class EitCli < Formula
  desc "CLI tool for EIT services (Statuspage, JitBit, LDAP, BeyondTrust, and more)"
  homepage "https://github.com/eitumd/eit-cli"
  version "0.5.7"

  on_macos do
    on_intel do
      url "https://github.com/eitumd/eit-cli/releases/download/v0.5.7/eit-darwin-amd64.tar.gz"
      sha256 "78ed3a218efb8ac64241143fe2061b34286555a439d43730cb1e6f991a6d6691"
    end
    on_arm do
      url "https://github.com/eitumd/eit-cli/releases/download/v0.5.7/eit-darwin-arm64.tar.gz"
      sha256 "f83847f3d1179e4fa34a64fc522bc6d96597b105eeb32e91c2356b6fd2c9c637"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/eitumd/eit-cli/releases/download/v0.5.7/eit-linux-amd64.tar.gz"
      sha256 "9a95836110de58c5a6246478a3f315f6a1562d93d263dd667dc9f7b6c955760a"
    end
  end

  def install
    bin.install "eit"
  end

  test do
    assert_match "eit version", shell_output("#{bin}/eit version")
  end
end
