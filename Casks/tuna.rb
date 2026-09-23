cask("tuna") do
  version("0.101")
  sha256("8f58f0994a7090cbdcd6ca1863b884c2826824702b5a77bf0b60fae765ab0e33")

  url("https://tunaformac.com/download/releases/2159")
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
