cask("tuna") do
  version("0.45")
  sha256("3b54cb325bbb94dcb89ec0bc419d0e1d3d6bb191e9d558b7bdf18c8f967d0e6d")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6MTUzLCJwdXIiOiJibG9iX2lkIn19--e5c31659de8a54b32a508100c30bcd6ddcb8f77f/Tuna-0.45-1009.zip")
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
