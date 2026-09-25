cask "superkeys" do
  version "0.2.3"
  sha256 "6829f734e424d484c7d3d50f32e39191049648cb141d5d9fad118eafa5555bc6"

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
