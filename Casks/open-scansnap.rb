cask "open-scansnap" do
  version "0.1.2"
  sha256 "57f618e62bcbc3c8641126d734a172bb4a1c6b23a7097751f044f12c997ddc53"

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
