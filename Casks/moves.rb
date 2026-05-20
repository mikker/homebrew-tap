cask("moves") do
  version("1.9.4")
  sha256("551fc1fe9647dd229200f0cae8a29e5471c737a4aaed7e89f320be38690ccb9e")

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
