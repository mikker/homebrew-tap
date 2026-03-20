cask("tuna") do
  version("0.46")
  sha256("a3c7c79f33b63eb2899ebb6003b6cfa7317007511f9d5b0a58f9b52ffcad5ce2")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6MTU0LCJwdXIiOiJibG9iX2lkIn19--10bf3c18085360834964c6a6efbb496212c548d1/Tuna-0.46-1016.zip")
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
