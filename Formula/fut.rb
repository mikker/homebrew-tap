class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.5/fut-macos-arm64.tar.gz"
    sha256 "405e62a3d073148439769bc6b0e48ebd93778ad5b55a2564a6b6507b0b023714"
  else
    url "https://github.com/mikker/fut/releases/download/0.5/fut-macos-x86_64.tar.gz"
    sha256 "9d25bbaae73f307349ed97f679af786c8e76b09f56453b1472e3d8d300eaf7a6"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
