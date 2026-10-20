class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.39/fut-macos-arm64.tar.gz"
    sha256 "f71dfa4ec631ed6e35d775b255e69138408d21aa10dd9ffaf14c13451f317f07"
  else
    url "https://github.com/mikker/fut/releases/download/0.39/fut-macos-x86_64.tar.gz"
    sha256 "32102fe85428b7bd60c96fc0a63f94005b7437de63d95eb196ac3cd968556664"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
