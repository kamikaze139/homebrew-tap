cask "prtoolbar" do
  version "0.1.0"
  sha256 "2efcda4d0e8885619ae4f879bb3d23d2a45333d3d224fa1e97ee88fd4ee3ae95"

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
