cask("tuna") do
  version("0.109")
  sha256("a6b096afa18a346aa775579b1b14b2a3880d4c1c437e3a1be5506b1cc519dbb4")

  url("https://tunaformac.com/download/releases/2289")
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
