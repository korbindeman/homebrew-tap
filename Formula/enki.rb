class Enki < Formula
  desc "Multi-agent coding orchestrator"
  homepage "https://github.com/korbindeman/enki"
  url "https://github.com/korbindeman/enki.git", branch: "main"
  version "0.1.0"
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
