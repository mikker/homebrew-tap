cask("flick-ring") do
  version("1.3.2")
  sha256("accc834b975d1939ee7bfaa8279d0ed6f399588d9cf6c610761026a24d775036")

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
