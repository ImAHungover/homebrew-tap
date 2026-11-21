cask "lore-bomber" do
  version "0.9.0"
  sha256 "ba6b3a4bc47ea42f9c8f9b172c30ab0bcb181e9ca930a72d98bcf8535ccd5fb2"

  on_arm do
    depends_on macos: :ventura
  end
  on_intel do
    depends_on :macos
  end

  url "https://github.com/ImAHungover/lore-bomber-releases/releases/download/v#{version}/LoreBomber-mac.zip"
  name "Lore Bomber"
  desc "Arena bomber game in a low-poly dungeon"
  homepage "https://github.com/ImAHungover/lore-bomber-releases"

  app "LoreBomber.app"

  zap trash: "~/Library/Application Support/Godot/app_userdata/Lore Bomber"
end
