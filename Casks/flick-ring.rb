cask("flick-ring") do
  version("1.3.0")
  sha256("21a3a7f4fb8204cbd827d14563855d8b39bf7e26650f316d5fa338810af55be9")

  url(
    "https://github.com/mikker/FlickRing/releases/download/v#{version}/FlickRing.app.zip",
    verified: "github.com/mikker/FlickRing/"
  )
  name("FlickRing")
  desc("Action ring for your normie mouse")
  homepage("https://github.com/mikker/FlickRing")
  auto_updates(true)

  livecheck do
    url("https://mikker.github.io/FlickRing/appcast.xml")
    strategy(:sparkle, &:short_version)
  end

  app("FlickRing.app")

  zap(
    trash: [
      "~/Library/Application Support/FlickRing",
      "~/Library/Caches/com.brnbw.FlickRing",
      "~/Library/Preferences/com.brnbw.FlickRing.plist",
      "~/Library/Saved Application State/com.brnbw.FlickRing.savedState"
    ]
  )
end
