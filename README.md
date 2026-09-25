# Rxmeez Tap

Homebrew casks and formulae for apps and tools by [Rxmeez](https://github.com/Rxmeez).

## Install

Homebrew only loads casks and formulae from taps you trust, so trust this one first:

```bash
brew trust --tap rxmeez/tap
```

Then:

```bash
brew install --cask rxmeez/tap/<cask>     # Mac apps
brew install rxmeez/tap/<formula>         # command-line tools
```

Or add the tap once with `brew tap rxmeez/tap`, then use the short names. In a `Brewfile`:

```ruby
tap "rxmeez/tap"
cask "<cask>"
```

## Packages

| Name | Type | What it is | Status |
| --- | --- | --- | --- |
| [superkeys](https://superkeys.space) | Cask | Your whole Mac, one key away: Caps Lock and right ⌘ become shortcuts for apps, windows, desktops, and keystrokes. | Updates itself (not notarised) |

## Layout

- `Casks/` — one `<name>.rb` per Mac app. Each points at a signed, notarised download and its SHA-256.
- `Formula/` — command-line tools.
- `.github/workflows/` — Homebrew's standard checks (`tests.yml`) on every pull request, bottle publishing (`publish.yml`), and a daily version check (`autobump.yml`).

Release files are not stored in this repository; each cask downloads from its project's release host.

### Early, un-notarised builds

Apps marked "not yet notarised" aren't signed with an Apple Developer ID yet. macOS blocks them the first time you open them; allow it once in System Settings → Privacy & Security → Open Anyway. `brew info --cask <name>` shows the exact steps.

## Documentation

`brew help`, `man brew`, or [Homebrew's documentation](https://docs.brew.sh).
