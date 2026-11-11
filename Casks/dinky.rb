cask "dinky" do
  version "0.27"
  sha256 "d258cc93aaae391390c87b6bb240c400b64ce7481248b71522f33e4f1019bd42"

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
