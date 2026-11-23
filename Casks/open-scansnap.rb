cask "open-scansnap" do
  version "0.1.0"
  sha256 "0da0ba148eb1f98c4d62f090c62eac9caf09658609c0b0b5ef95308b6339b39c"

  url "https://github.com/thomergil/open-scansnap/releases/download/v#{version}/OpenScanSnap-#{version}.dmg"
  name "Open ScanSnap"
  desc "Scans from a ScanSnap iX500 over Wi-Fi or USB, without ScanSnap Home"
  homepage "https://github.com/thomergil/open-scansnap"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "Open ScanSnap.app"

  uninstall quit: "com.thomergil.openscansnap"

  zap trash: [
    "~/.config/open-scansnap",
    "~/Library/Application Support/open-scansnap",
    "~/Library/Logs/open-scansnap",
    "~/Library/Preferences/com.thomergil.openscansnap.plist",
  ]
end
