# Leviathan X | Homebrew Distribution

This tap packages the standalone **Leviathan X** Go utilities. The upstream CLI projects remain independently maintained and can be used without the hosted intelligence platform.

| Formula | Tool | Capability |
| --- | --- | --- |
| [fenrir](Formula/fenrir.rb) | [FenrirLVX](https://github.com/cyeezy08/FenrirLVX) | WordPress component evidence and local advisory correlation |
| [hostage](Formula/hostage.rb) | [HostageLVX](https://github.com/cyeezy08/HostageLVX) | Dangling DNS classification with explicit provider evidence |

## Installation

The verified Homebrew tap repository is `cyeezy08/homebrew-tap`, installed through `cyeezy08/tap`. **Leviathan X** is the product identity.

```bash
brew tap cyeezy08/tap
brew install fenrir hostage
fenrir --help
hostage --help
```

Review each tool's README, release notes and license before use. Both utilities are intended for explicitly authorized target inventories. To inspect the formula itself:

```bash
brew cat cyeezy08/tap/fenrir
brew cat cyeezy08/tap/hostage
```

## Updates

```bash
brew update
brew upgrade fenrir hostage
```

Formula versions and artifact hashes reflect the last published release, **not the latest source commit**. Review upstream CI and release checksums before changing a formula.

**Related:** [surfacediff](https://github.com/cyeezy08/surfacediff) is a Python snapshot/diff tool and is not packaged by this tap.
