cask "qlziplist" do
  version "1.0.0"
  sha256 "275c66d0c5bb4741234d0e20724fea08593a6b712814318009332cff6d401802"

  url "https://github.com/TypoStudio/qlziplist/releases/download/v#{version}/QLZipList-#{version}.dmg"
  name "QLZipList"
  desc "Quick Look extension that previews archives as a file tree"
  homepage "https://github.com/TypoStudio/qlziplist"

  auto_updates false
  depends_on macos: :sonoma

  app "QLZipList.app"

  zap trash: [
    "~/Library/Containers/kr.typostudio.QLZipList",
    "~/Library/Containers/kr.typostudio.QLZipList.Preview",
  ]

  caveats <<~EOS
    Launch QLZipList once so macOS registers the Quick Look extension. After
    that you can quit it — previews keep working.
      open -a QLZipList

    Then select an archive in Finder and press the space bar.

    QLZipList is ad-hoc signed (not notarized). If macOS blocks it on first
    launch:
      xattr -dr com.apple.quarantine "/Applications/QLZipList.app"
  EOS
end
