class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.1/fut-macos-arm64.tar.gz"
    sha256 "86a9f9d390eb8b1b738cb94ec5bb171790f62b1f2d63a96288876fcc60949340"
  else
    url "https://github.com/mikker/fut/releases/download/0.1/fut-macos-x86_64.tar.gz"
    sha256 "88b9482e19ebfe1e4268333129098bf747537dff3c83e4c58c6a85d5a242b278"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
