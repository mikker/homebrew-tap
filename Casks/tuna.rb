cask("tuna") do
  version("0.57")
  sha256("6d58cf41f423e7233b4b0de1a9b37fb74590c3c9fbd32bd94110b5a1e453cc58")

  url("https://tunaformac.com/download/releases/1172")
  name("Tuna")
  desc("Modern launcher")
  homepage("https://tunaformac.com/")
  auto_updates(true)

  livecheck do
    url("https://tunaformac.com/appcast.xml")
    strategy(:sparkle, &:short_version)
  end

  app("Tuna.app")

  zap(
    trash: [
      "~/Library/Application Support/Tuna",
      "~/Library/Caches/com.brnbw.Tuna",
      "~/Library/Preferences/com.brnbw.Tuna.plist",
      "~/Library/Saved Application State/com.brnbw.Tuna.savedState",
    ],
  )
end
