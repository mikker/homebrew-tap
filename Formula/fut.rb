class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.32/fut-macos-arm64.tar.gz"
    sha256 "ee57004eeecdc8c0b3c72cf7fade57301deeebb0e8046ce65b0217eb09ec4afe"
  else
    url "https://github.com/mikker/fut/releases/download/0.32/fut-macos-x86_64.tar.gz"
    sha256 "a484474e3970f9f9ecf9bba89da54fc25bba726caae689db84145be87723f1d8"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
