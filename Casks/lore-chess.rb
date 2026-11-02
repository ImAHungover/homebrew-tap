cask "lore-chess" do
  version "1.8.0"
  sha256 "e1c81f82000c8e49f0281a04e2eef5db097cf2e1bc60f0a4d36bff532064ff9e"

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

  caveats <<~EOS
    Lore Chess is not notarized by Apple yet. If macOS blocks it, run:
      xattr -dr com.apple.quarantine #{appdir}/LoreChess.app
  EOS
end
