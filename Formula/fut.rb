class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.30/fut-macos-arm64.tar.gz"
    sha256 "5e8cbb50b8aab56331d682a4e0c61b66ccbc1a5be3912800d780b3237a3494e1"
  else
    url "https://github.com/mikker/fut/releases/download/0.30/fut-macos-x86_64.tar.gz"
    sha256 "ff6ad162de392102da2f4e9ac6838d4649df1b04208a15d7cc276b5b536e3eba"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
