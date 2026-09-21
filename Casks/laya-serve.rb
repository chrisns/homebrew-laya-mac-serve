cask "laya-serve" do
  version "0.1.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/chrisns/laya-mac-serve/releases/download/v#{version}/LayaServe-#{version}-arm64.dmg"
  name "Laya Serve"
  desc "Menu bar server that gives n8n an OpenAI-compatible Laya classifier"
  homepage "https://github.com/chrisns/laya-mac-serve"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "LayaServe.app"

  caveats <<~EOS
    Laya Serve is ad-hoc signed and not notarized by Apple.
    Homebrew quarantines it, so macOS blocks the first launch. To allow it:

      System Settings > Privacy & Security > scroll to Security
      Click "Open Anyway" next to the Laya Serve warning

    To skip that step, install with:

      brew install --cask --no-quarantine chrisns/laya-mac-serve/laya-serve

    The download is about 1.1 GB, because the application holds the model
    weights. It needs no network and no Hugging Face account at run time.

    The server listens on http://127.0.0.1:5292/v1. Use the menu bar item to
    reach it from another machine.
  EOS

  zap trash: [
    "~/Library/Application Support/LayaServe",
    "~/Library/Logs/LayaServe",
  ]
end
