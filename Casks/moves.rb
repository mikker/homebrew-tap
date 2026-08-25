cask("moves") do
  version("1.10.1")
  sha256("fdf81e0d86d4ad078a16b7496ca35aaff0ad1b687a05368b85550fa41cfcbdd6")

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
