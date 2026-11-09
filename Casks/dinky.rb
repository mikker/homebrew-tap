cask "dinky" do
  version "0.25"
  sha256 "dcc688b70a0b1c1c1d29d5863b64084cdf7101832af2a614372be9aa42a1d030"

  url "https://github.com/mikker/Dinky/releases/download/v#{version}/dinky.app.zip"
  name "dinky"
  desc "Tiling window manager for macOS on native Spaces, with SIP left on"
  homepage "https://dinky.rodeo/"

  livecheck do
    url "https://github.com/mikker/Dinky/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "dinky.app"
  binary "#{appdir}/dinky.app/Contents/MacOS/dinky"

  zap trash: [
    "~/Library/Application Support/dinky",
    "~/Library/Preferences/com.brnbw.dinky.plist",
  ]
end
