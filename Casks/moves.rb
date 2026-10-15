cask("moves") do
  version("1.10.4")
  sha256("0ed11e8d424b1df88ae3238f33678c05ecabd86cdbb054220fdcab8c28b49f31")

  url("https://github.com/mikker/Moves.app/releases/download/v#{version}/Moves.app.zip")
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
