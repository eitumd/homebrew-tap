class AwsOidc < Formula
  desc "OIDC credential helper for AWS CLI using PKCE"
  homepage "https://github.com/eitumd/aws-oidc"
  url "https://github.com/eitumd/aws-oidc/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "python@3"

  def install
    bin.install "aws-oidc"
  end

  test do
    assert_match "usage:", shell_output("#{bin}/aws-oidc --help", 0).downcase
  end
end
