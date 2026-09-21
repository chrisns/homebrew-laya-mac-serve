# Homebrew tap for Laya Serve

[Laya Serve](https://github.com/chrisns/laya-mac-serve) is a macOS menu bar
application. It gives n8n an OpenAI-compatible endpoint for the Laya classifier.

## Install

```bash
brew install --cask --no-quarantine chrisns/laya-mac-serve/laya-serve
```

Leave out `--no-quarantine` if you prefer to approve the application in System
Settings. The application is ad-hoc signed, not notarised by Apple.

The download is about 1.1 GB. The application holds the model weights, so it needs no
network at run time.

## Update

```bash
brew update && brew upgrade --cask laya-serve
```

The `Update Cask` workflow keeps this tap in step with each release of
[chrisns/laya-mac-serve](https://github.com/chrisns/laya-mac-serve).
