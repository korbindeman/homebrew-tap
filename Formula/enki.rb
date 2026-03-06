class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  version "2026.03.06"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/korbindeman/enki/releases/download/v2026.03.06/enki-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/korbindeman/enki/releases/download/v2026.03.06/enki-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  depends_on :macos

  def install
    bin.install "enki"
  end

  test do
    assert_match "enki", shell_output("#{bin}/enki --help")
  end
end
