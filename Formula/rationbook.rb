class Rationbook < Formula
  desc "Local Codex and Claude capacity monitor CLI"
  homepage "https://github.com/attomus/rationbook"
  url "https://github.com/attomus/rationbook/releases/download/v0.1.1/Rationbook-0.1.1.zip"
  sha256 "95497cf9ea26c21626bf56102207d44f0faa7962a4264a3bd7c0c321148f27c3"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos
  on_macos do
    depends_on macos: :sonoma
  end

  def install
    bin.install "Contents/Resources/bin/rationbook"
    bin.install "Contents/Resources/bin/rationbook-claude-helper"
  end

  def caveats
    <<~EOS
      This package installs only the CLI and Claude feed helper.
      Background refresh requires the separately installed menu-bar app.
      Provider integrations are opt-in; run rationbook for command help.
      If the app previously installed a CLI into ~/.local/bin, check your PATH
      to ensure it selects the Homebrew version you intend to use.
      Remove an enabled Claude feed before uninstalling: rationbook claude uninstall-feed
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rationbook version")
  end
end
