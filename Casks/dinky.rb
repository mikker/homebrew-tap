cask "dinky" do
  version "0.4"
  sha256 "fc3a147a19e2fc45729d9962c9910b22f495c9123decac576d04e172e3136c2e"

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
