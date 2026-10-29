cask "rationbook" do
  version "0.1.2,4"
  sha256 "c12e750bc0813920322d19ec537900f9c87732fc47337bb41e0ec8a81f1a073f"

  url "https://github.com/attomus/rationbook/releases/download/v#{version.before_comma}/Rationbook-#{version.before_comma}.zip"
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
