cask "fst" do
  version "0.2"
  sha256 "7df8561bce94360cf5f0cfeba44ca4b4d7ea03d331e28652148b8e0bffa211dd"

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
