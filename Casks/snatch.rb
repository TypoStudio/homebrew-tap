cask "snatch" do
  version "0.4"
  sha256 "27f0809e5ecbbcb23800188eac24ec3f11d9314e53aa71485f19ecaf1a69f052"

  url "https://github.com/TypoStudio/snatch/releases/download/v#{version}/Snatch-#{version}.dmg"
  name "Snatch"
  desc "Move & resize any window from anywhere with a modifier + mouse"
  homepage "https://github.com/TypoStudio/snatch"

  depends_on macos: :ventura

  app "Snatch.app"

  zap trash: [
    "~/Library/Preferences/com.snatch.app.plist",
  ]

  caveats <<~EOS
    Snatch is ad-hoc signed (not notarized). If macOS blocks it on first launch:
      xattr -dr com.apple.quarantine "/Applications/Snatch.app"

    Then grant Accessibility permission:
      System Settings → Privacy & Security → Accessibility → enable Snatch.
  EOS
end
