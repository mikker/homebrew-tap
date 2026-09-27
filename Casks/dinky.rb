cask "dinky" do
  version "0.2.2"
  sha256 "1c9ffd5c65278de1c70a9ff8a4244d4f2bff4cd0ade590ab0497e534ef0fcd27"

  url "https://github.com/mikker/Dinky/releases/download/v#{version}/dinky.app.zip"
  name "dinky"
  desc "Tiling window manager for macOS on native Spaces, with SIP left on"
  homepage "https://mikker.github.io/Dinky/"

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
