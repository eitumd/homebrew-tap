class AwsOidc < Formula
  desc "OIDC credential helper for AWS CLI using PKCE"
  homepage "https://github.com/eitumd/aws-oidc"
  url "https://github.com/eitumd/aws-oidc/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "c30789e008a7f784281425c2e9ca231989fa4c7829e98045dab3a73d05d2dd11"
  license "MIT"

  depends_on "python@3"

  def install
    bin.install "aws-oidc"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/aws-oidc --help", 0).downcase
  end
end
