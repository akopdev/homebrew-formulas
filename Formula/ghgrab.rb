# typed: true
# frozen_string_literal: true

class Ghgrab < Formula
  desc "Browse and download files from GitHub, GitLab, Codeberg, Gitea, and Forgejo"
  homepage "https://ghgrab.readthedocs.io"
  version "2.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/abhixdd/ghgrab/releases/download/v#{version}/ghgrab-darwin-arm64"
      sha256 "cc8619f45f5ba315ee89ead484b0df75c905336bfeb23da767f596cb524900d0"
    end
    on_intel do
      url "https://github.com/abhixdd/ghgrab/releases/download/v#{version}/ghgrab-darwin"
      sha256 "2a9851e953e4d9181936af479c236d499531d2fc725af572ec8b6fcb7884911f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/abhixdd/ghgrab/releases/download/v#{version}/ghgrab-linux-arm64"
      sha256 "8354aa41a5822b6db1ec9fb07e8c9fd70c46548b98109b10f6700b25f1c21e10"
    end
    on_intel do
      url "https://github.com/abhixdd/ghgrab/releases/download/v#{version}/ghgrab-linux"
      sha256 "fa96f467f54efb5c1b65d69e950b5c8815c6a19a8eec35e7495e34967fdf34f5"
    end
  end

  def install
    bin.install Dir["ghgrab*"].first => "ghgrab"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ghgrab --version")
  end
end
