class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.26/fut-macos-arm64.tar.gz"
    sha256 "29ccfe5ea6187500b5c7f7a0f185f1fbb6b7069deac371707b4fcaba1646f3cb"
  else
    url "https://github.com/mikker/fut/releases/download/0.26/fut-macos-x86_64.tar.gz"
    sha256 "8fcf1664681df9053b69ac1a738a63c3a48c25ff61aa99e6e5fc20cb91ff1c37"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
