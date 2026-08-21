class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.12/fut-macos-arm64.tar.gz"
    sha256 "2e0a244c39401ac8ab663663bcb720083614a0512e15aedbbb8570ada809310b"
  else
    url "https://github.com/mikker/fut/releases/download/0.12/fut-macos-x86_64.tar.gz"
    sha256 "dd85e732569c86be5ba7ffaf7094c0f1695ce4b86a50155f70c81a51cd853860"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
