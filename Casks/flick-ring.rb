cask("flick-ring") do
  version("1.2.3")
  sha256(:no_check)

  url(
    "https://flick-ring-updates.s3.amazonaws.com/FlickRing.b32.zip",
    verified: "flick-ring-updates.s3.amazonaws.com/"
  )
  name("FlickRing")
  desc("Action ring for your normie mouse")
  homepage("https://github.com/mikker/FlickRing.app")

  livecheck do
    url("https://flick-ring-updates.s3.amazonaws.com/appcast.xml")
    strategy(:sparkle, &:short_version)
  end

  app("FlickRing.app")

  zap(
    trash: [
      "~/Library/Application Support/FlickRing",
      "~/Library/Caches/com.mikker.FlickRing",
      "~/Library/Preferences/com.mikker.FlickRing.plist",
      "~/Library/Saved Application State/com.mikker.FlickRing.savedState"
    ]
  )
end
