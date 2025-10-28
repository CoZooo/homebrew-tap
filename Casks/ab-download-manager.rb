cask "ab-download-manager" do
  version "1.7.1"
  sha256 "b19c223e90e3504e9b97e6078475c09199f6ca81d65f1fda1836e0e71a494718"

  url "https://github.com/amir1376/ab-download-manager/releases/download/v#{version}/ABDownloadManager_#{version}_mac_arm64.dmg",
      verified: "github.com/amir1376/ab-download-manager/"
  name "AB Download Manager"
  desc "Download Manager that speeds up your downloads"
  homepage "https://abdownloadmanager.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ABDownloadManager.app"
end
