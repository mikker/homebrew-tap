class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.13/fut-macos-arm64.tar.gz"
    sha256 "cd8726934a98fc52c58a47598993c9b588dc2e520284ba7f5757b97830ec8e60"
  else
    url "https://github.com/mikker/fut/releases/download/0.13/fut-macos-x86_64.tar.gz"
    sha256 "e0de1791acf85870650a5ea56db0a193cb94e16cead1697d1854484ec55fabbc"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
