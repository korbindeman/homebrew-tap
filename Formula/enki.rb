class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  url "https://github.com/korbindeman/enki/releases/download/v2026.03.10.1/enki-aarch64-apple-darwin.tar.gz"
  version "2026.03.10.1"
  sha256 "0e9ee65ca9d68d12c43f89e7d574bf21830c5a6118b63c62004fc15d31f05fe9"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "enki"
  end

  test do
    assert_match "enki", shell_output("#{bin}/enki --help")
  end
end
