class Steve < Formula
  desc "CLI for driving Mac applications via the Accessibility API"
  homepage "https://github.com/mikker/steve"
  license "MIT"

  if Hardware::CPU.arm?
    url "https://github.com/mikker/steve/releases/download/v0.3.0/steve-macos-arm64.tar.gz"
    sha256 "9d24eb6597432144ad03e86a8b3e2bc27a59b7cae412a0d33140f55c8ee15369"
  else
    url "https://github.com/mikker/steve/archive/refs/tags/v0.3.0.tar.gz"
    sha256 "3e6bfc49fd9dae43bce56d99367016f1c449b3580cd1b7ecea176ba32b55b9d9"
  end

  depends_on :macos

  def install
    if Hardware::CPU.arm?
      bin.install "steve"
    else
      system "swift", "build", "-c", "release"
      bin.install ".build/release/steve"
    end
  end

  test do
    system bin/"steve", "--help"
  end
end
