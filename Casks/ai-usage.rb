cask "ai-usage" do
  version "0.1.1"
  sha256 "2d9ea83819cbe7bcfac9b639161875ab7edb909207e485408797913758e93b27"

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
