class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.3/fut-macos-arm64.tar.gz"
    sha256 "64a044998ff55e0a6140cabec1d156e135df5ee0b028602cbacf1db9108e1e8a"
  else
    url "https://github.com/mikker/fut/releases/download/0.3/fut-macos-x86_64.tar.gz"
    sha256 "811b3e990bf3eb80e14f8c3df901ae29f45bcc3f7dcc65199d1c8365f1574df9"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
