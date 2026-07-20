# Privacy Policy

**Effective date:** July 20, 2026

Keymory is designed to respect your privacy completely. This policy covers the **non-sandboxed build distributed through this Homebrew tap** (`brew install --cask mekh/keymory/keymory`). The source code lives at <https://github.com/mekh/keymory>.

## Summary

**Keymory does not collect, store, transmit, or share any personal data.** Everything the app does happens entirely on your Mac, and it has no network access of any kind.

## What Keymory stores

Keymory remembers which keyboard input source (language/layout) you last used in each application, so it can restore it automatically. This information is:

- stored **only on your Mac**, in the app's local preferences (`~/Library/Preferences/toxic0der.Keymory.plist`);
- never transmitted anywhere, and never shared with the developer or any third party.

The stored data is limited to application bundle identifiers (e.g. `com.apple.finder`) paired with keyboard input source identifiers. It contains no personal information, no keystrokes, and no document contents.

## What Keymory does NOT do

- **No network connections.** Keymory opens no sockets and never connects to the internet.
- **No screenshots or screen recording.** It uses no screen-capture APIs and does not read other apps' window contents.
- **No input logging.** It reads no key codes and uses none of the keyboard/event-input (CGEvent) APIs. It cannot see what you type.
- **No analytics or tracking.** There is no telemetry, no usage tracking, and no advertising.
- **No account.** Keymory requires no sign-in and no personal information.
- **No third-party services, SDKs, or cryptography.**

## Permissions

Keymory's core functionality — remembering and restoring the input source when you switch apps — **requires no permissions at all.**

This build offers one **optional** feature, **Track All Windows**, which switches the input language for pop-up windows that never activate their app (for example a hotkey terminal, Spotlight, Raycast, Alfred, or 1Password Quick Access) before you type. Because observing which app holds keyboard focus requires it, this build:

- runs **outside** the macOS App Sandbox (the sandbox forbids this API), and
- asks for the **Accessibility** permission — but only when you turn Track All Windows on.

**Accessibility is optional.** If you never enable Track All Windows, Keymory never requests or uses Accessibility, and every other feature keeps working. When you do enable it, Keymory uses Accessibility to read **only which application currently has keyboard focus** (its bundle identifier). It never reads your keystrokes, never reads window or document contents, and stores nothing beyond the same `bundle id → input source` mapping described above. Turn the feature off and Keymory stops using Accessibility entirely.

## Relationship to the Mac App Store build

A separate build of Keymory is available on the Mac App Store. That build is **fully sandboxed** and does not include Track All Windows, so it never uses Accessibility. This Homebrew build trades the sandbox for that one proactive-switching feature; in both builds, no data ever leaves your Mac.

## Children

Keymory does not collect any data from anyone, including children.

## Changes to this policy

If this policy changes, the updated version will be published in this repository with a new effective date.

## Contact

Questions about privacy? Open an issue at <https://github.com/mekh/keymory/issues>.
