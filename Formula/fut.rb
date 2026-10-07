class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.34/fut-macos-arm64.tar.gz"
    sha256 "c39e1857adaaa3539db19b07c91cf3e718c44350f86ce75daa10da868568a1fa"
  else
    url "https://github.com/mikker/fut/releases/download/0.34/fut-macos-x86_64.tar.gz"
    sha256 "97f88bbf96e8a74763eb54216709daedb7b398f2c7fad9dc4c9d3fee82bee9b9"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
