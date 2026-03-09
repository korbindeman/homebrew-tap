class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  url "https://github.com/korbindeman/enki/releases/download/v2026.03.09.1/enki-aarch64-apple-darwin.tar.gz"
  version "2026.03.09.1"
  sha256 "5da6fa611627f7b751c48c9dcda7a145b91def2570b5ca1b9625669774bcabfd"
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
