class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  url "https://github.com/korbindeman/enki/releases/download/v2026.03.10/enki-aarch64-apple-darwin.tar.gz"
  version "2026.03.10"
  sha256 "4d7811e179870bed36e39fc780401f4f026a3f4078e01c12dfd4e8a707c977c8"
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
