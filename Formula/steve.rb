class Steve < Formula
  desc "CLI for driving Mac applications via the Accessibility API"
  homepage "https://github.com/mikker/steve"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/steve/releases/download/v0.5.0/steve-macos-arm64.tar.gz"
    sha256 "c7a079514793bfa30c7618a974c2ae9e7b2b936bf57d2567332fcc08b4a6d5ef"
  else
    url "https://github.com/mikker/steve/releases/download/v0.5.0/steve-macos-x86_64.tar.gz"
    sha256 "ff161408c6cea0f5349618716d9eba58b6e4ccd0c2b12b37c2f253647ba47430"
  end

  depends_on :macos

  def install
    bin.install "steve"
  end

  test do
    system bin/"steve", "--help"
  end
end
