cask "ab-download-manager" do
  version "1.7.0"
  sha256 "43b94b1f76f7b0604376676edddf3ee68bbdca9dd3256fc8f49513167fd55fd6"

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
