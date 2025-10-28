cask "ab-download-manager" do
  arch arm: "arm64", intel: "x64"
  version "1.7.0"
  sha256 arm:   "43b94b1f76f7b0604376676edddf3ee68bbdca9dd3256fc8f49513167fd55fd6",
         intel: "6577814840f6c14e8f71a0e2e02ff354596b65a951568ae064715cc75371d545"

  url "https://github.com/amir1376/ab-download-manager/releases/download/v#{version}/ABDownloadManager_#{version}_mac_#{arch}.dmg",
      verified: "github.com/amir1376/ab-download-manager/"

  name "AB Download Manager"
  desc "Download manager that speeds up your downloads"
  homepage "https://abdownloadmanager.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "ABDownloadManager.app"
end