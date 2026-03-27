cask("tuna") do
  version("0.51")
  sha256("b5678380448a7c4ed7f1987b03dc595036f50ed9145f5a9edd1c1f027d8baf64")

  url("https://tunaformac.com/download/releases/1076")
  name("Tuna")
  desc("Modern launcher")
  homepage("https://tunaformac.com/")

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
