cask "lore-chess" do
  version "1.9.0"
  sha256 "88b1d06e7f96a35b36e46e644c13a00e59bf720b62ded24cc0090d3b5f5901a2"

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
