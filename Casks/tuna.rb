cask("tuna") do
  version("0.56")
  sha256("98b4274e29e283a34958eebc4d3d6469961f3f50145fb2c7fea6e9893151fe9d")

  url("https://tunaformac.com/download/releases/1169")
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
