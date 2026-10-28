cask "rationbook" do
  version "0.1.1"
  sha256 "95497cf9ea26c21626bf56102207d44f0faa7962a4264a3bd7c0c321148f27c3"

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
