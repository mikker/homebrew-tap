class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.19/fut-macos-arm64.tar.gz"
    sha256 "01ec4802fe8f3219bfd0a262206fa623be908429ec69ff5f3b53325af9900f37"
  else
    url "https://github.com/mikker/fut/releases/download/0.19/fut-macos-x86_64.tar.gz"
    sha256 "79dc24ac86d2fcfbdebcdc062539aad20c873614e9f09943f0d10fa7d551dee8"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
