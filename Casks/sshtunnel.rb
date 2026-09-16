cask "sshtunnel" do
  version "1.6.1"
  sha256 "3fa11b95a6a7893548cdf26dae0e951526737d810085a655cc181dc35d36fd36"

  url "https://github.com/TypoStudio/ssh-tunnel-for-macos/releases/download/v#{version}/SSHTunnel-#{version}.dmg"
  name "SSHTunnel"
  desc "Manager for SSH tunnels and connection configs"
  homepage "https://github.com/TypoStudio/ssh-tunnel-for-macos"

  auto_updates false

  app "SSHTunnel.app"

  zap trash: "~/Library/Preferences/kr.typostudio.sshtunnel.plist"
end
