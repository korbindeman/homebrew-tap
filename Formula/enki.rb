class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  url "https://github.com/korbindeman/enki/archive/refs/tags/v2026.03.06.tar.gz"
  version "2026.03.06"
  sha256 "31a901df72843dcf5bade894432d09058d4b6a3ce4f195298ca91b358a521bb1"
  license "MIT"

  depends_on "rust" => :build
  depends_on "git"

  def install
    system "cargo", "install", "--path", "crates/cli", "--root", prefix
  end

  test do
    assert_match "enki", shell_output("#{bin}/enki --help")
  end
end
