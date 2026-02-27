cask("tuna") do
  version("0.35")
  sha256("5ab8fa890ba9f9ab549b1f3afece9bb5e5e78296a18923ce69916181b061123d")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6NjYsInB1ciI6ImJsb2JfaWQifX0=--b0efc0c938ce457e17f2f6516bfe27bda5e173ce/Tuna-0.35-818.zip")
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
