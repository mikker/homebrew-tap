class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.23/fut-macos-arm64.tar.gz"
    sha256 "df43646953be84dad4bea5161bcb3d6765b29e79c65e392536a4d63c78a859c1"
  else
    url "https://github.com/mikker/fut/releases/download/0.23/fut-macos-x86_64.tar.gz"
    sha256 "f09f4f4a6adb1af1ec65dfa03fc5b28ef779dc8209fd25e96906e546cf3cc4af"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
