cask "multron-download-manager" do
  arch arm: "aarch64", intel: "x64"

  version "0.0.11"
  sha256 arm:   "4b9772dde75ec899601951642cba4a68754da898ebcb42ea01636683acff25e5",
         intel: "9ddf05a7af42e7adb8be910cf20c70f21c63c37b8595e07010b5cf351c37cbbc"

  url "https://github.com/Multron-Community/Multron-Download-Manager/releases/download/v#{version}/Multron.Download.Manager_#{version}_#{arch}.dmg"
  name "Multron Download Manager"
  desc "Fast, multi-connection download manager with yt-dlp and BitTorrent support"
  homepage "https://github.com/Multron-Community/Multron-Download-Manager"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Multron Download Manager.app"
end
