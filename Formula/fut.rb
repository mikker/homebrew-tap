class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.24/fut-macos-arm64.tar.gz"
    sha256 "525de22f2fbb14a1f1b3bae8dd94b022e8864d273e5459aebce20a98cf9a8f03"
  else
    url "https://github.com/mikker/fut/releases/download/0.24/fut-macos-x86_64.tar.gz"
    sha256 "58a60b7eccfaa317f04f5075b3bbb343d27aa0aa5a780cb70bd68d45f122d479"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
