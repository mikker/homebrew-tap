cask "poof" do
  version "0.1.0,16"
  sha256 "9d4d4549d31c10585827f5110455195355009615ffb425a2f856fbe58b3725e4"

  url "https://github.com/mikker/poof/releases/download/v#{version.csv.first}/Poof-#{version.csv.first}-#{version.csv.second}.zip"
  name "Poof"
  desc "macOS text snippet expander"
  homepage "https://github.com/mikker/poof"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Poof.app"
end
