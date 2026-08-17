class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.7/fut-macos-arm64.tar.gz"
    sha256 "9485d469996fd13c7d99caa8632f8db4b5885f45fecb7fa2de5df4310387bb29"
  else
    url "https://github.com/mikker/fut/releases/download/0.7/fut-macos-x86_64.tar.gz"
    sha256 "e422576a4114118e8733ead6b2e6032b63de722e6f9b71c2ea23529ffa88659c"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
