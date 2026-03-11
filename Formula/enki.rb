class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  url "https://github.com/korbindeman/enki/releases/download/v2026.03.11/enki-aarch64-apple-darwin.tar.gz"
  version "2026.03.11"
  sha256 "673919ec4a12de1e16221eddbcbe7238314a0bbbd85ba6b81a8c785d0d282fc5"
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
