# Attomus Homebrew tap

Official packages for **Attomus Labs**, practical developer infrastructure tools from our engineering work.

## Rationbook

```sh
# macOS menu-bar app
brew install --cask attomus/tap/rationbook

# CLI only
brew install --formula attomus/tap/rationbook
```

Apple Silicon and macOS 14 or newer are required. Both packages use the same versioned release archive, signed by Attomus Limited and notarized by Apple, with a pinned SHA-256. The CLI formula includes the Claude feed helper; only the menu-bar app schedules background refresh.

See [Rationbook](https://github.com/attomus/rationbook) for setup, provider requirements, privacy, limitations and removal instructions. Integrations are opt-in. Uninstalling a package does not erase quota history.

## Updates

Run `brew update`, then `brew upgrade --cask rationbook` or `brew upgrade --formula rationbook` for the package you installed. When upgrading an enabled Claude feed, remove and re-enable the feed as described in Rationbook's README to update its copied helper.

Maintainers update both package versions and SHA-256 values together after publishing a tagged release. Confirm the downloaded archive checksum and test both packages before announcing an update. There is no cross-repository write token or automatic bump workflow in this initial release.

## Licence and security

Apache-2.0; see [LICENSE](LICENSE). Report vulnerabilities through the [Attomus security policy](https://github.com/Attomus/.github/blob/main/SECURITY.md).
