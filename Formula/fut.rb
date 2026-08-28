class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.15/fut-macos-arm64.tar.gz"
    sha256 "4fa8bc359f581bb24e7f3e1e0be3d4519116b4502e1f0c6d3fd9352452089a3c"
  else
    url "https://github.com/mikker/fut/releases/download/0.15/fut-macos-x86_64.tar.gz"
    sha256 "7f336f48b54f9a7016da0e77a4e364c0496441a6d397acb5ad07c1b3587bd153"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
