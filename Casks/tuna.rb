cask("tuna") do
  version("0.42")
  sha256("594841591d540d137813db4618cf2c8070dad1ff92a7eaf26731be70ee6cc585")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6MTEyLCJwdXIiOiJibG9iX2lkIn19--e862bbe804f87df0e9ed3c714109e31c9b16f03c/Tuna-0.42-953.zip")
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
