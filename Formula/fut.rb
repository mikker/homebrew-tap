class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.35/fut-macos-arm64.tar.gz"
    sha256 "e68fae58dacee07b3d65715ff1a89815b762ac1f91fee2bf5ec39e2099f66047"
  else
    url "https://github.com/mikker/fut/releases/download/0.35/fut-macos-x86_64.tar.gz"
    sha256 "c4716850bee019766311c8d6905776a63d5e6a9e6c675b00077cfad90d5e7ef2"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
