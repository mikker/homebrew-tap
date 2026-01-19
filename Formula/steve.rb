class Steve < Formula
  desc "CLI for driving Mac applications via the Accessibility API"
  homepage "https://github.com/mikker/steve"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/steve/releases/download/v0.4.0/steve-macos-arm64.tar.gz"
    sha256 "1108f8c743214aa3416ee39afbade7479e2d6eb97480ac894d4366965a95e495"
  else
    url "https://github.com/mikker/steve/releases/download/v0.4.0/steve-macos-x86_64.tar.gz"
    sha256 "eef4c4d15db1bcce82e06fe568d1eaf83b57b3f14549188d1e85079ae17be251"
  end

  depends_on :macos

  def install
    bin.install "steve"
  end

  test do
    system bin/"steve", "--help"
  end
end
