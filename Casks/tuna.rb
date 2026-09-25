cask("tuna") do
  version("0.102")
  sha256("3e6ba762cf87cb8634ddd0b53012994a420701da8e75cc7bd40c9d0506a7fdec")

  url("https://tunaformac.com/download/releases/2169")
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
