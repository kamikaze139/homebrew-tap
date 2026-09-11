cask "prtoolbar" do
  version "0.1.4"
  sha256 "2c7dc0ee3b544f1058073fc699e58325230214b1cdea4a6070cd7dae8895ad89"

  url "https://github.com/kamikaze139/homebrew-tap/releases/download/v#{version}/prtoolbar-v#{version}-universal-apple-darwin.zip"
  name "prtoolbar"
  desc "Menu bar app for GitHub pull requests, reviews, and stacks"
  homepage "https://github.com/kamikaze139/homebrew-tap"

  depends_on formula: "gh"
  depends_on macos: :monterey

  app "prtoolbar.app"

  uninstall quit: "de.kaminski.prtoolbar"

  caveats <<~EOS
    Sign in to GitHub once, then open the menu bar app:
      gh auth login --hostname github.com
      open -a prtoolbar

    Already signed in with gh? Just open the app.

    This build is not notarized by Apple. If macOS blocks the first launch,
    open System Settings > Privacy & Security > Open Anyway after trying
    to open the app.
  EOS
end
