class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.40/fut-macos-arm64.tar.gz"
    sha256 "bea3ff47c75cbc2a2ba2cf2a0a995273102aa37897758596eb373bf4d7c7cec4"
  else
    url "https://github.com/mikker/fut/releases/download/0.40/fut-macos-x86_64.tar.gz"
    sha256 "99ac32be45b49a34cd35c37e8994e4475078d51c05b9ad4ca5805139449d4168"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
