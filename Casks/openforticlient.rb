cask "openforticlient" do
  version "1.1.0"
  sha256 "b99e857fb8c25e5d1b3e602cf1807df4d3e63699819e6299b6e3be1c6763ccf7"

  url "https://github.com/ImAHungover/open-forti-client/releases/download/v#{version}/OpenFortiClient-#{version}.dmg"
  name "OpenFortiClient"
  desc "Open-source client for Fortinet SSL-VPN gateways"
  homepage "https://github.com/ImAHungover/open-forti-client"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "OpenFortiClient.app"

  uninstall launchctl: "io.github.openforticlient.helper",
            quit:      "io.github.openforticlient"

  zap trash: [
    "~/Library/Application Support/OpenFortiClient",
    "~/Library/Logs/OpenFortiClient",
    "~/Library/Preferences/io.github.openforticlient.plist",
    "~/Library/Saved Application State/io.github.openforticlient~iosmac.savedState",
  ]

  caveats <<~EOS
    OpenFortiClient needs its privileged helper to set up routes and DNS. Open the app, go to
    Settings → Privileged helper → Install, then allow it in System Settings → General → Login Items.
  EOS
end
