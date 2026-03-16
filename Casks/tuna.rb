cask("tuna") do
  version("0.44")
  sha256("cc7e1ad324a1c92e70e6e828f06cb9a137c7944542d9e035f945b3dcfbcf9df2")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6MTQzLCJwdXIiOiJibG9iX2lkIn19--c7edd100d91eb2e26922228bfe2f3a4e140875c8/Tuna-0.44-981.zip")
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
