cask "superkeys" do
  version "0.1.1"
  sha256 "976bf9a29b404881dc6c385394b99fa659395d2cf4f635edc1bb73fd619e5543"

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
