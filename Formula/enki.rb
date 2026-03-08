class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  url "https://github.com/korbindeman/enki/releases/download/v2026.03.08/enki-aarch64-apple-darwin.tar.gz"
  version "2026.03.08"
  sha256 "073ec7f1cd23b6b8a8e39b14f8e7ee50fc46d0de6aed8be6b1390651aa5ae0ce"
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
