cask "lore-chess" do
  version "1.8.1"
  sha256 "6a4510a0511e809b35423f2debc2c4897ecd52d95fc6172f773aad1349d8bf85"

  on_arm do
    depends_on macos: :ventura
  end
  on_intel do
    depends_on :macos
  end

  url "https://github.com/ImAHungover/lore-chess-releases/releases/download/v#{version}/LoreChess-mac.zip"
  name "Lore Chess"
  desc "Chess against Stockfish with an animated 3D dungeon board"
  homepage "https://github.com/ImAHungover/lore-chess-releases"

  app "LoreChess.app"

  zap trash: "~/Library/Application Support/Godot/app_userdata/Lore Chess"
end
