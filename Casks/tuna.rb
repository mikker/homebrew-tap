cask("tuna") do
  version("0.58")
  sha256("3c82dc7693c95a1c5a9b4966958c525b7ae4aa8c0c96a7fb46c848eb4f917276")

  url("https://tunaformac.com/download/releases/1193")
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
