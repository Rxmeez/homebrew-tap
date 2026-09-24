# Rxmeez Tap

Homebrew casks and formulae for apps and tools by [Rxmeez](https://github.com/Rxmeez).

## Install

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
| [superkeys](https://superkeys.space) | Cask | Two private keys for your Mac: Caps Lock and right ⌘ become shortcuts for apps, windows, and desktops. | Coming soon |

## Layout

- `Casks/` — one `<name>.rb` per Mac app. Each points at a signed, notarised download and its SHA-256.
- `Formula/` — command-line tools.
- `.github/workflows/` — Homebrew's standard checks (`tests.yml`) on every pull request, bottle publishing (`publish.yml`), and a daily version check (`autobump.yml`).

Release files are not stored in this repository; each cask downloads from its project's release host.

## Documentation

`brew help`, `man brew`, or [Homebrew's documentation](https://docs.brew.sh).
