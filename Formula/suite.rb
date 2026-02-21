class Suite < Formula
  desc "Tiny TUI task runner with hotkeys, split output, and YAML config"
  homepage "https://github.com/mikker/dude_suite"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mikker/dude_suite/releases/download/v0.4.0/suite-macos-arm64.tar.gz"
      sha256 "2c318622ecf525f8dbe709c52b919bdc1759719bc44c48dec7ca5fd2b6113b42"
    else
      url "https://github.com/mikker/dude_suite/releases/download/v0.4.0/suite-macos-x86_64.tar.gz"
      sha256 "72981b55fb93191b4a0daa1b33e010567d4b6e9e52ff5ae5033a47d2eb4a4f5f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mikker/dude_suite/releases/download/v0.4.0/suite-linux-arm64.tar.gz"
      sha256 "60472b6d65a90749f62839eb6c2ece5f0040da0d0e864839127b9acf6ac9ecda"
    else
      url "https://github.com/mikker/dude_suite/releases/download/v0.4.0/suite-linux-x86_64.tar.gz"
      sha256 "e448af56c19e3acddcbe25249773933b9aad1cd546a050a73bea6c516996982c"
    end
  end

  def install
    bin.install "suite"
  end

  test do
    system bin/"suite", "--help"
  end
end
