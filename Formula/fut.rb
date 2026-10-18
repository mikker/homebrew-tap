class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.37/fut-macos-arm64.tar.gz"
    sha256 "ccb551bc778d3928f97ac79784bdf08b40abf4c50ca70c11088b86b383fb693c"
  else
    url "https://github.com/mikker/fut/releases/download/0.37/fut-macos-x86_64.tar.gz"
    sha256 "104a65ab8d2749d8eae27fb01a5d30d009263fc5c6a4ea2cf19058c7bf89afd2"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
