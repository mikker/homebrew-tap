cask "fst" do
  version "0.1.1"
  sha256 "1ac42f6932d2f853211127150ea2539c1953ed499d987b6a56a70ad70707163f"

  url "https://github.com/mikker/Fst/releases/download/v#{version}/Fst.app.zip"
  name "Fst"
  desc "Fast, minimal native text editor"
  homepage "https://github.com/mikker/Fst"
  auto_updates true
  depends_on macos: ">= :sonoma"

  livecheck do
    url "https://github.com/mikker/Fst/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "Fst.app"

  zap trash: "~/Library/Containers/com.mikker.Fst"
end
