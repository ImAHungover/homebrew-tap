cask "lore-bomber" do
  version "0.19.0"
  sha256 "9ea360a5b1efe079e502bd2389d2d6d39d62585cd96d4f8d699c22b685fd402c"

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
