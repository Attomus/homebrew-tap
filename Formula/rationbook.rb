class Rationbook < Formula
  desc "Local Codex and Claude capacity monitor CLI"
  homepage "https://github.com/attomus/rationbook"
  url "https://github.com/attomus/rationbook/releases/download/v0.1.0/Rationbook-0.1.0.zip"
  sha256 "5623cbe852a37a30f913e613a99666c23cceb92721c38c8b35b599f20bb00b5d"
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
