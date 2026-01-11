cask "adbpad" do
  version "3.0.1"
  sha256 "718316d9ea23e53c3c01c1dd657c71e26dd7a2ab68e7465ba419f86cfe08875d"

  url "https://github.com/kaleidot725/adbpad/releases/download/v#{version}/AdbPad-#{version}.dmg"
  name "AdbPad"
  desc "GUI tool for Android app testing using ADB"
  homepage "https://github.com/kaleidot725/adbpad"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "AdbPad.app"

  zap trash: [
    "~/Library/Application Support/AdbPad",
    "~/Library/Preferences/jp.kaleidot725.adbpad.plist",
    "~/Library/Saved Application State/jp.kaleidot725.adbpad.savedState",
  ]
end
