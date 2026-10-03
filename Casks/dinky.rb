cask "dinky" do
  version "0.11"
  sha256 "c28b17f574481951d0a406f41dd9d139ee4093aec5df5c7778b64ec4490c8bb5"

  url "https://github.com/mikker/Dinky/releases/download/v#{version}/dinky.app.zip"
  name "dinky"
  desc "Tiling window manager for macOS on native Spaces, with SIP left on"
  homepage "https://dinky.rodeo/"

  livecheck do
    url "https://github.com/mikker/Dinky/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :golden_gate

  app "dinky.app"
  binary "#{appdir}/dinky.app/Contents/MacOS/dinky"

  zap trash: [
    "~/Library/Application Support/dinky",
    "~/Library/Preferences/com.brnbw.dinky.plist",
  ]
end
