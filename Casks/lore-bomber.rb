cask "lore-bomber" do
  version "0.3.0"
  sha256 "300ec1003858e057590ac429a21448732c5baffa1340477f7462bc0aa20a1dcf"

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
