cask "superkeys" do
  version "0.1.2"
  sha256 "4682be19ad3854451f61548a30bbff206a6982fcbf8afb3120157de90b0466de"

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
    Superkeys #{version} is an early build that is not yet notarised by Apple,
    so macOS blocks it the first time you open it. To allow it once:
      System Settings → Privacy & Security → Superkeys → Open Anyway
    Then grant Accessibility access when Superkeys asks.
  EOS
end
