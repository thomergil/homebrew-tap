cask "open-scansnap" do
  version "0.1.1"
  sha256 "64ffbdc73688a9bdde42a57ba5df22ae17b49aa632f7395d22139748917b1f6a"

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
