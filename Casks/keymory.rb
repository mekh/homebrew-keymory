cask "keymory" do
  version "1.0"
  sha256 "ae3ae5361fc69076d9cd64e9025f9b617efcdccf8ead3a21643a32c9552e7a8b"

  url "https://github.com/mekh/homebrew-keymory/releases/download/v#{version}/Keymory-#{version}.zip"
  name "Keymory"
  desc "Menu-bar utility that remembers keyboard input source per app"
  homepage "https://github.com/mekh/keymory"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Keymory.app"

  # This non-sandboxed build stores only a single UserDefaults plist. It has no
  # network, no windows, and no sandbox container, so it creates no caches, no
  # HTTP storage, and no saved-state. (The container / Application Scripts paths
  # on disk belong to the sandboxed App Store build, not this one.)
  zap trash: "~/Library/Preferences/toxic0der.Keymory.plist"
end
