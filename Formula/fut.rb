class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.38/fut-macos-arm64.tar.gz"
    sha256 "c1cfcb23a56459057fad196d3f055350d0f1e2a550c0e961b3bacfe64f2f8c7f"
  else
    url "https://github.com/mikker/fut/releases/download/0.38/fut-macos-x86_64.tar.gz"
    sha256 "c9c030530aace06861f86e48d4efe1bb620ef41fe958eebd4591183c44dde272"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
