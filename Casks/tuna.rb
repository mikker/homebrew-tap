cask("tuna") do
  version("0.43")
  sha256("615069ae37f5f24fca69a82e536c242a71c01c6f4a0faa17cd4ef56b3ae5e019")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6MTMzLCJwdXIiOiJibG9iX2lkIn19--7a5893dcfc0e0111b0ae06e58d870cd6c4381668/Tuna-0.43-979.zip")
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
