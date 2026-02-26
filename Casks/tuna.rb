cask("tuna") do
  version("0.34")
  sha256("867ce473c2541bd1e8e898d870f8bbd2cf9a1f9d03c0f5d8961f11efc05f4c75")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6NjUsInB1ciI6ImJsb2JfaWQifX0=--51a6b05b563cda922ce3451b3ec6d438d3d7d60e/Tuna-0.34-796.zip")
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
