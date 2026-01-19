class Suite < Formula
  desc "Tiny TUI task runner with hotkeys, split output, and YAML config"
  homepage "https://github.com/mikker/dude_suite"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mikker/dude_suite/releases/download/v#{version}/suite-v#{version}-darwin-arm64.tar.gz"
      sha256 "7bc36375007b8973d20bda05658048d26461389bd7c5a5721880bc99a6561f8a"
    else
      url "https://github.com/mikker/dude_suite/releases/download/v#{version}/suite-v#{version}-darwin-amd64.tar.gz"
      sha256 "5577f96a9659a26f120e821dccfffa5a56118a955a75544cf887c92119f9296e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mikker/dude_suite/releases/download/v#{version}/suite-v#{version}-linux-arm64.tar.gz"
      sha256 "cafc75b0383384653e0fee08aa7e463bc4428eed0a1d78208901a7b484d02a4d"
    else
      url "https://github.com/mikker/dude_suite/releases/download/v#{version}/suite-v#{version}-linux-amd64.tar.gz"
      sha256 "8e2a001b2edf2bde903d89208fc43c9366d3e0329826431c66a1685f54dc5a4b"
    end
  end

  def install
    bin.install "suite"
  end

  test do
    system bin/"suite", "--help"
  end
end
