class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.31/fut-macos-arm64.tar.gz"
    sha256 "94c72e08dc634027231676cf75367bdb540a5566acfedab62e3a0579e78e9b66"
  else
    url "https://github.com/mikker/fut/releases/download/0.31/fut-macos-x86_64.tar.gz"
    sha256 "960debbfdc024cb3eebe270918c258a0645f87402b25a826df58548234540bcd"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
