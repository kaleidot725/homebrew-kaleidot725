cask "adbpad" do
  version "3.0.1"
  sha256 "72af71ac3755c65a64fe2fbcbc9877dae58b60c8ed4c3a3cae0b9329450f51fe"

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
