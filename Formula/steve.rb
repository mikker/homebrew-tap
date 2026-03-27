class Steve < Formula
  desc "CLI for driving Mac applications via the Accessibility API"
  homepage "https://github.com/mikker/steve"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/steve/releases/download/v0.5.1/steve-macos-arm64.tar.gz"
    sha256 "a8befc5867dba35417e6253d5395e254ee3997025395ebc527abe9c727390db1"
  else
    url "https://github.com/mikker/steve/releases/download/v0.5.1/steve-macos-x86_64.tar.gz"
    sha256 "420e9579fb03583ed4ab59e724008f5a5e3bf8cbf6467059fe67659076bab93d"
  end

  depends_on :macos

  def install
    bin.install "steve"
  end

  test do
    system bin/"steve", "--help"
  end
end
