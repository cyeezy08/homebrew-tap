# Leviathan OffSec Homebrew Tap

Official Homebrew tap for [Leviathan Offensive Security](https://leviathan.ac) tooling.

## Quick Install

```bash
# Add the tap
brew tap leviathan-offsec/tap

# Install FenrirLVX (Offline CMS & WordPress vulnerability matcher)
brew install fenrir

# Install HostageLVX (High-speed dangling DNS & takeover engine)
brew install hostage
```

## Available Formulas

| Formula | Description | Upstream |
|---|---|---|
| [`fenrir`](Formula/fenrir.rb) | High-speed Go CLI for WordPress attack surface mapping and offline CVE correlation | [leviathan-offsec/FenrirLVX](https://github.com/leviathan-offsec/FenrirLVX) |
| [`hostage`](Formula/hostage.rb) | High-speed dangling DNS and subdomain takeover engine in Go | [leviathan-offsec/HostageLVX](https://github.com/leviathan-offsec/HostageLVX) |

## Updating

```bash
brew update
brew upgrade fenrir
brew upgrade hostage
```
