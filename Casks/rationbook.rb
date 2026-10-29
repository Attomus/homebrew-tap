cask "rationbook" do
  version "0.1.2"
  sha256 "5013e4dd250f4f6dd47524eab341fff1e9fc6c7dcceeefe52fb4cf9d33ec4849"

  url "https://github.com/attomus/rationbook/releases/download/v#{version}/Rationbook-#{version}.zip"
  name "Rationbook"
  desc "Local Codex and Claude capacity monitor"
  homepage "https://github.com/attomus/rationbook"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Rationbook.app"

  caveats <<~EOS
    Before removing Rationbook, remove its optional Claude feed and CLI
    using the app or rationbook uninstall.
  EOS
end
