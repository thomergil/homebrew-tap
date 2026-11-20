cask "cannonball" do
  version "0.1.0"
  sha256 "00604969cada74adb511742692669d1ef9d3a44942f42551e6a34faebfd35200"

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
