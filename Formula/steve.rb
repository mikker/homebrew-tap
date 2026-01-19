class Steve < Formula
  desc "CLI for driving Mac applications via the Accessibility API"
  homepage "https://github.com/mikker/steve"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/steve/releases/download/v0.3.1/steve-macos-arm64.tar.gz"
    sha256 "fb4451df4627a87be0f288f9f31e73c7476147c1a207d3fbea29e19b4d263b70"
  else
    url "https://github.com/mikker/steve/releases/download/v0.3.1/steve-macos-x86_64.tar.gz"
    sha256 "ecbc3ad5335bcbb8d2cc253558a51cbebc4581d75d518ff07414ba75a4aa99e6"
  end

  depends_on :macos

  def install
    bin.install "steve"
  end

  test do
    system bin/"steve", "--help"
  end
end
