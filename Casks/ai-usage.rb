cask "ai-usage" do
  version "0.1.0"
  sha256 "d581a85d069cd8a9bd4ee33fedebc29da389d754fa3248231222beeedcd81d86"

  url "https://github.com/TypoStudio/ai-usage/releases/download/v#{version}/AIUsage-#{version}.dmg"
  name "AI Usage"
  desc "Desktop widget showing Claude Code and Codex usage limits as activity rings"
  homepage "https://github.com/TypoStudio/ai-usage"

  auto_updates true
  depends_on macos: :sonoma

  app "AIUsage.app"

  zap trash: [
    "~/Library/Caches/com.typostudio.aiusage",
    "~/Library/Group Containers/3W3S7ZBVUU.com.typostudio.aiusage",
    "~/Library/Preferences/com.typostudio.aiusage.plist",
  ]

  caveats <<~EOS
    AI Usage is not notarized. If the first launch is blocked, run:
      xattr -dr com.apple.quarantine #{appdir}/AIUsage.app
    Then add the widgets: right-click the desktop, choose Edit Widgets…, and search for AI Usage.
  EOS
end
