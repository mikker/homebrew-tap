cask("tuna") do
  version("0.39")
  sha256("5aa9ae790aaa33526f76d9244d37121b5034330a91a2198a54b533a70627d4cc")

  url("https://tunaformac.com/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsiZGF0YSI6NzYsInB1ciI6ImJsb2JfaWQifX0=--42e9e5aa7926e94db19efef925822d9f596ca1fc/Tuna-0.39-899.zip")
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
