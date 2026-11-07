cask "lore-chess" do
  version "1.10.0"
  sha256 "f27f31ebdd1f5b1ded0d11a5eda18b79750c1dacd000249cd8de38823a8e6826"

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
