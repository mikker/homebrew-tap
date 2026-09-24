class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.25/fut-macos-arm64.tar.gz"
    sha256 "1c4d85879dcb480dd119332845b8b1471de7ec01ef7a5f953dc5eda6bba7d56e"
  else
    url "https://github.com/mikker/fut/releases/download/0.25/fut-macos-x86_64.tar.gz"
    sha256 "42923d51b7a801a6a98d112ad5e02d8c6ae649e0e3bf3739f06e6c314b2e3436"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
