cask "lore-chess" do
  version "1.8.3"
  sha256 "1df2921357831650edc2752c3e902207f3928060a0a0c1f124f23bc5ec2140e4"

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
