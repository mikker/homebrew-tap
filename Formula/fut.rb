class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.42/fut-macos-arm64.tar.gz"
    sha256 "7ee60b913c04ca8d4345c7fbf1c996e78708aa2eab20b70a0c7e986cef7f6df8"
  else
    url "https://github.com/mikker/fut/releases/download/0.42/fut-macos-x86_64.tar.gz"
    sha256 "011a4b1e86be33349176774cb4f6d33ca2e19ad96567faf28006cc5f35705c31"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
