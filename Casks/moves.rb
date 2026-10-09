cask("moves") do
  version("1.10.2")
  sha256("2877afb7a090733107d76a30e87d82cef4be012d2337f50d7d62629590c5c2b9")

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
