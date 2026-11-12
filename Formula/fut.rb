class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.44/fut-macos-arm64.tar.gz"
    sha256 "5e245b3af913dfe551e3c5c4e3a305b52b3ba3c6949c1182398471ac24a70c07"
  else
    url "https://github.com/mikker/fut/releases/download/0.44/fut-macos-x86_64.tar.gz"
    sha256 "ea80aa138fb8052474482b5b2d7a975eaa61ab4fddcbec989dac448870298f8e"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
