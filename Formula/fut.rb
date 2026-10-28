class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.41/fut-macos-arm64.tar.gz"
    sha256 "7eb38f20cf40b21028f0b8cb79bc2b26ffea4f545c39113f561565d230e05ab4"
  else
    url "https://github.com/mikker/fut/releases/download/0.41/fut-macos-x86_64.tar.gz"
    sha256 "409cbf3738b6c27114c4fe00e5502bf06d6a2b54509b3ce6a71d2f37c5161e22"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
