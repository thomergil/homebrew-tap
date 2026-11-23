cask "cannonball" do
  version "0.1.1"
  sha256 "8bffecef232a6786d4aa10e807920ede062ff9a12c28205df498dff386db67b8"

  url "https://github.com/thomergil/cannonball/releases/download/v#{version}/Cannonball-#{version}.dmg"
  name "Cannonball"
  desc "Receives photos from Canon EOS cameras over Wi-Fi"
  homepage "https://github.com/thomergil/cannonball"

  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Cannonball.app"

  uninstall quit: "com.thomergil.cannonball"

  zap trash: [
    "~/.config/cannonball",
    "~/.local/state/cannonball",
    "~/Library/Logs/cannonball.log",
  ]
end
