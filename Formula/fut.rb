class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.2/fut-macos-arm64.tar.gz"
    sha256 "366156651b9845062c226426b5de3e95221b5c4f60bec66ba7919eb36c0e5c32"
  else
    url "https://github.com/mikker/fut/releases/download/0.2/fut-macos-x86_64.tar.gz"
    sha256 "a1c0594a5346f88b15137fad06595c7d6b291eef7c6a3b8154b69fcbe9965e07"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
