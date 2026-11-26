cask "lore-bomber" do
  version "0.16.0"
  sha256 "2d59fdc76323ec25a53d8f2625fb0cb8e214890d5039e53893dbf0d836c65c9c"

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
