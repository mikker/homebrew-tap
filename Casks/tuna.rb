cask("tuna") do
  version("0.36")
  sha256("7f81a62f060fd3b074aa373dec3345c98942d7a95d59ffb342e4fff133455b16")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6NzIsInB1ciI6ImJsb2JfaWQifX0=--ff732ae8755c4384dd67ee1cfdc239b7c0e408ff/Tuna-0.36-842.zip")
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
