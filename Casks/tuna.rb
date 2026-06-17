cask("tuna") do
  version("0.77")
  sha256("02ffd692c0cf329d1e25e380a06b5b40365fe9721f9ea3fddffbdaf1f778d45e")

  url("https://tunaformac.com/download/releases/1515")
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
