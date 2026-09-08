class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.18/fut-macos-arm64.tar.gz"
    sha256 "bb9b52ecb5a07d8daf72970ad5992f7d1489f6238091de69706b9ce04f35437b"
  else
    url "https://github.com/mikker/fut/releases/download/0.18/fut-macos-x86_64.tar.gz"
    sha256 "efc80e1d875099bc4a99bcfd398a31d533e989637d15876b5a7695c2d7504ca5"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
