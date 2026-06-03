cask("tuna") do
  version("0.76")
  sha256("667066ee861e86b7578f4be3158dc9cf665cc3bc007146a8bb8fe07293eb7454")

  url("https://tunaformac.com/download/releases/1488")
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
