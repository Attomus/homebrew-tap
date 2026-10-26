cask "rationbook" do
  version "0.1.0"
  sha256 "5623cbe852a37a30f913e613a99666c23cceb92721c38c8b35b599f20bb00b5d"

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
