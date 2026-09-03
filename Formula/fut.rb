class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.16/fut-macos-arm64.tar.gz"
    sha256 "642257625e4432500e9adbbb4cd919747bf5724614dbdef1458fca9b6769e70e"
  else
    url "https://github.com/mikker/fut/releases/download/0.16/fut-macos-x86_64.tar.gz"
    sha256 "5c09b5ab3c0c260fcf2abe91ef8d7f544d40c3916ef5f6ae7bdeac02dc823359"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
