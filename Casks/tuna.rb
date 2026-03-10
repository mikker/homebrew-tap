cask("tuna") do
  version("0.40")
  sha256("9043e11170f985b52bc74f76ca733cc2f39515a11321038a68d0cdf25f32ce8e")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6NzcsInB1ciI6ImJsb2JfaWQifX0=--de4ec4be024bb9b31a9c118b275a655075668125/Tuna-0.40-917.zip")
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
