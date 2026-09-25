cask "superkeys" do
  version "0.2.2"
  sha256 "ea9d7ed80bc837b47c69bb1b42ee09bc2231ad2e9df6da924f22975bc8b3a2ae"

  url "https://superkeys.space/download/Superkeys-#{version}.zip"
  name "Superkeys"
  desc "Turns Caps Lock and right Command into keys for apps, windows and desktops"
  homepage "https://superkeys.space/"

  auto_updates true
  depends_on macos: :sonoma

  app "Superkeys.app"

  # Quitting puts Caps Lock and right Command back to normal.
  uninstall quit:       "space.superkeys",
            login_item: "Superkeys"

  zap trash: "~/Library/Preferences/space.superkeys.plist"

  caveats <<~EOS
    Superkeys is not notarised by Apple, so macOS blocks it the first time
    you open it. Click Done (not Move to Bin), then allow it once:
      System Settings → Privacy & Security → Open Anyway
    Then grant Accessibility when Superkeys asks. Step by step:
      https://superkeys.space/install
    Updates install themselves after that, with no more prompts.
  EOS
end
