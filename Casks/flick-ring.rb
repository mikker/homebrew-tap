cask("flick-ring") do
  version("1.3.1")
  sha256("d0a278f678876de287679c516547c57eae478929b2ed6121d8d261bf30f3a64f")

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
