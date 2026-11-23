cask "cannonball" do
  version "0.1.3"
  sha256 "11d48b151e9029cc7297bdcc7a4934aa489b45ade18cf435c8abbf53b26dfb8a"

  url "https://github.com/thomergil/cannonball/releases/download/v#{version}/Cannonball-#{version}.dmg"
  name "Cannonball"
  desc "Receives photos from Canon EOS cameras over Wi-Fi"
  homepage "https://github.com/thomergil/cannonball"

  auto_updates true
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
