cask("moves") do
  version("1.10.0")
  sha256("03216bc74293a4c01e0307a50317bf036e746798f10b1e8dde7ba96670970c6d")

  url(
    "https://github.com/mikker/Moves.app/releases/download/v#{version}/Moves.app.zip",
    verified: "github.com/mikker/Moves.app/"
  )
  name("Moves")
  desc("Position your windows juuust right")
  homepage("https://getmoves.app")
  auto_updates(true)

  livecheck do
    url("https://mikker.github.io/Moves.app/appcast.xml")
    strategy(:sparkle, &:short_version)
  end

  app("Moves.app")

  zap(
    trash: [
      "~/Library/Application Support/Moves",
      "~/Library/Caches/com.mikker.Moves",
      "~/Library/Preferences/com.mikker.Moves.plist",
      "~/Library/Saved Application State/com.mikker.Moves.savedState"
    ]
  )
end
