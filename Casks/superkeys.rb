cask "superkeys" do
  version "0.2.6"
  sha256 "f7e3bd5989e923391b275e81aa519b37d24f8e2bfa0cedc470512ca02bd65d5a"

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

  zap trash: [
    "~/.config/superkeys",
    "~/Library/Preferences/space.superkeys.plist",
  ]

  caveats <<~EOS
    Superkeys is not notarised by Apple, so macOS blocks it the first time
    you open it. Click Done (not Move to Bin), then allow it once:
      System Settings → Privacy & Security → Open Anyway
    Then grant Accessibility when Superkeys asks. Step by step:
      https://superkeys.space/install
    Updates install themselves after that, with no more prompts.
  EOS
end
