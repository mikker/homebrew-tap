cask("moves") do
  version("1.9.5")
  sha256("da24e65bd4b793afdd0a5012f70c831adabbc42416b15d177ec58b5a20fc8485")

  url(
    "https://github.com/mikker/Moves.app/releases/download/v#{version}/Moves.app.zip",
    verified: "github.com/mikker/Moves.app/",
  )
  name("Moves")
  desc("Position your windows juuust right")
  homepage("https://getmoves.app/")

  livecheck do
    url("https://mikker.github.io/Moves.app/appcast.xml")
    strategy(:sparkle, &:short_version)
  end

  auto_updates(true)
  depends_on :macos

  app("Moves.app")

  zap(
    trash: [
      "~/Library/Application Support/Moves",
      "~/Library/Caches/com.mikker.Moves",
      "~/Library/Preferences/com.mikker.Moves.plist",
      "~/Library/Saved Application State/com.mikker.Moves.savedState",
    ],
  )
end
