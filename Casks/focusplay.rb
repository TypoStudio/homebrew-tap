cask "focusplay" do
  version "1.1.0"
  sha256 "2860f8410a7162ef58339aa39dde0d643d357153053376bfbbae03b783e82159"

  url "https://github.com/TypoStudio/focus-play/releases/download/v#{version}/FocusPlay-#{version}.dmg"
  name "FocusPlay"
  desc "Multi-monitor focus mode menu bar app"
  homepage "https://github.com/TypoStudio/focus-play"

  auto_updates false

  app "FocusPlay.app"

  zap trash: "~/Library/Preferences/com.typostudio.focusplay.plist"
end
