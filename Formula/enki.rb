class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  url "https://github.com/korbindeman/enki/releases/download/v2026.03.06.3/enki-aarch64-apple-darwin.tar.gz"
  version "2026.03.06.3"
  sha256 "44d4433bc846b24a381029da2f21a3aa59c5cc59bc2ddf1414f467cd136f9048"
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
