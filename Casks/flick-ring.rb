cask("flick-ring") do
  version("1.3.3")
  sha256("b1cc9706ebf7901c41cc0fd756bf3e1dddefd7934873dae85a800786989587a4")

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
