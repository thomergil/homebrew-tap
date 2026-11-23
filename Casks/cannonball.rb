cask "cannonball" do
  version "0.1.2"
  sha256 "14f9451ff99f4f5a6b342484e3b69642d5d3daa61adc2a752926f906417ea4cd"

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
