cask "focusplay" do
  version "1.0.4"
  sha256 "bc2621131be92883f1930bf44cb1b30d58c62110a5f406db1b079eae4d87f14f"

  url "https://github.com/TypoStudio/focus-play/releases/download/v#{version}/FocusPlay-#{version}.dmg"
  name "FocusPlay"
  desc "Multi-monitor focus mode menu bar app"
  homepage "https://github.com/TypoStudio/focus-play"

  auto_updates false

  app "FocusPlay.app"

  zap trash: "~/Library/Preferences/com.typostudio.focusplay.plist"
end
