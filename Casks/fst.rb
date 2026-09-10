cask "fst" do
  version "0.1.0"
  sha256 "15c37bf8b5e35575d14916ec771d35e5ab285a7b295a822e8603b0c70dbbb70a"

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
