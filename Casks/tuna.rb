cask("tuna") do
  version("0.85")
  sha256("7a870e12a218a7ebbad5637f162874abc501618924c739a6894ec68111bc6ece")

  url("https://tunaformac.com/download/releases/1871")
  name("Tuna")
  desc("Modern launcher")
  homepage("https://tunaformac.com/")

  livecheck do
    url("https://tunaformac.com/appcast.xml")
    strategy(:sparkle, &:short_version)
  end

  auto_updates true
  depends_on macos: :sequoia

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
