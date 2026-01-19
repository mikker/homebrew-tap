class Suite < Formula
  desc "Tiny TUI task runner with hotkeys, split output, and YAML config"
  homepage "https://github.com/mikker/dude_suite"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/mikker/dude_suite/releases/download/v0.3.2/suite-macos-arm64.tar.gz"
      sha256 "0bd30c49832ff5c4067eb1c77b9f61a64ebd832979bd8e070338dc5210f12f15"
    else
      url "https://github.com/mikker/dude_suite/releases/download/v0.3.2/suite-macos-x86_64.tar.gz"
      sha256 "cdaa63d88f95ce5125f1ad3347c27b90b11c56eee8494eb0e47b3ae1d2fa74af"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/mikker/dude_suite/releases/download/v0.3.2/suite-linux-arm64.tar.gz"
      sha256 "426d2a08eaaccd56d9d2960a8ab2714955ee607626dca6a438bbf39cdf44bd1f"
    else
      url "https://github.com/mikker/dude_suite/releases/download/v0.3.2/suite-linux-x86_64.tar.gz"
      sha256 "d4fa767f8aa6971f2ea0c058f80177a2ad1c3194e45cf4c18af45811de335dca"
    end
  end

  def install
    bin.install "suite"
  end

  test do
    system bin/"suite", "--help"
  end
end
