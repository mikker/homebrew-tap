class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.33/fut-macos-arm64.tar.gz"
    sha256 "267be20ec4146711aed32dffd24748a89fc87b513a3c5f5093c10f458cdf2044"
  else
    url "https://github.com/mikker/fut/releases/download/0.33/fut-macos-x86_64.tar.gz"
    sha256 "4739c0623e29c78fffa788517cced9f60de37a132a5de1023ecd20231f2696d9"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
