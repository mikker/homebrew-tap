class Fut < Formula
  desc "Agent-aware terminal multiplexer"
  homepage "https://fut.sh"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/fut/releases/download/0.17/fut-macos-arm64.tar.gz"
    sha256 "4fc67633cf071e771b4bd095cef1c407dee4a30c38816ad724367ceda7e0c24f"
  else
    url "https://github.com/mikker/fut/releases/download/0.17/fut-macos-x86_64.tar.gz"
    sha256 "5d75fbce4e0237a55c0be1a4420ac54c82247f768db4e1fcfeb062873c305860"
  end

  depends_on :macos

  def install
    bin.install "fut"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/fut --version")
  end
end
