class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.22/fut-macos-arm64.tar.gz"
    sha256 "d8c0d24d0407ec8bb3c5974bf505d9a9941d7c0c496b4ebd93e5a778f5a09ec5"
  else
    url "https://github.com/mikker/fut/releases/download/0.22/fut-macos-x86_64.tar.gz"
    sha256 "fca444ed4ff1ed119b7bb6ce09bebfa2887443f2969dd9c059cb1df34b873467"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
