class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  url "https://github.com/korbindeman/enki/releases/download/v2026.03.06.2/enki-aarch64-apple-darwin.tar.gz"
  version "2026.03.06.2"
  sha256 "c7540c114f0145f8ccb95a5a55bcc4ee0946d3e847a56b884a90d81314d7c5af"
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
