class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.14/fut-macos-arm64.tar.gz"
    sha256 "c64b287ee0c920018e4a8a98ae4fd6a5ab098a8f960781afca1bc44b27ff09a5"
  else
    url "https://github.com/mikker/fut/releases/download/0.14/fut-macos-x86_64.tar.gz"
    sha256 "0e9461df1c6f2e361ab23ca9567ecb531ee583b2dbfe7a309853a7aa3ec5b8ea"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
