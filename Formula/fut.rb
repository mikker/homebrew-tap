class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.43/fut-macos-arm64.tar.gz"
    sha256 "8cf8c41e12e50ab568265b04b0cccaec5b5953ecc0fc5154beeb6f0a1c55ebb8"
  else
    url "https://github.com/mikker/fut/releases/download/0.43/fut-macos-x86_64.tar.gz"
    sha256 "e2e23da213215dbc52c41447995f8fe8adb3ed58cc6f141e83960a997d52b106"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
