class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.45/fut-macos-arm64.tar.gz"
    sha256 "1adc2b3fc6d30a0a27668e88d37d124ca45853ad0176f7393921067be64285c2"
  else
    url "https://github.com/mikker/fut/releases/download/0.45/fut-macos-x86_64.tar.gz"
    sha256 "8772d0579502001399a3f03ea97044a791b3cd7cbda2e7aea36f95c7d2377af7"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
