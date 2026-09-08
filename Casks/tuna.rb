cask("tuna") do
  version("0.98")
  sha256("a595ef4626d5e118692e01f4b2e0e485db5cac252ed1e4f6a5a7d155dc56176c")

  url("https://tunaformac.com/download/releases/2115")
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
