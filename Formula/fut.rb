class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.36/fut-macos-arm64.tar.gz"
    sha256 "ed835c8f6e01d0755c667bec0feb960e47598ad6a5cf7b7ff80e4f88e98d1614"
  else
    url "https://github.com/mikker/fut/releases/download/0.36/fut-macos-x86_64.tar.gz"
    sha256 "ff220b6a628d70ec2f6ee12e4509ffc9d27597ad5c46124e6548fe3adeb66936"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
