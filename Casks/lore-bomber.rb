cask "lore-bomber" do
  version "0.16.1"
  sha256 "ed88decb6663b4c4e4c44d6a1af9867fe75c7e101cbcc7574f98863e05b5ec30"

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
