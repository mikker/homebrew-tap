class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.29/fut-macos-arm64.tar.gz"
    sha256 "701ce5055cd51c6e5a753353d0e74a41619e67aab8c8dbbd816d7237674ae8b0"
  else
    url "https://github.com/mikker/fut/releases/download/0.29/fut-macos-x86_64.tar.gz"
    sha256 "cb80c23b70b27d4a2be91cc2a20eba32bbe21dd32fe89f648231c80749ee82db"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
