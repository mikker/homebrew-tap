cask("leader-key") do
  version("1.16.0")
  sha256("b96443ce87b594c7308d3f8ba91acbc3ce440b0a032f2a309a1ec348b30dad5f")

  url("https://github.com/mikker/LeaderKey.app/releases/download/v#{version}/Leader.Key.app.zip")
  name("Leader Key")
  desc("The faster than your launcher launcher")
  homepage("https://github.com/mikker/LeaderKey.app")

  livecheck do
    url("https://mikker.github.io/LeaderKey.app/appcast.xml")
    strategy(:sparkle, &:short_version)
  end

  app("Leader Key.app")

  zap(
    trash: [
      "~/Library/Application Support/Leader Key",
      "~/Library/Caches/com.mikker.Leader-Key",
      "~/Library/Preferences/com.mikker.Leader-Key.plist",
      "~/Library/Saved Application State/com.mikker.Leader-Key.savedState"
    ]
  )
end
