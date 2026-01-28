# typed: false
# frozen_string_literal: true

class Sbomhub < Formula
  desc "CLI tool for SBOMHub - SBOM generation and vulnerability scanning"
  homepage "https://github.com/youichi-uda/sbomhub-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/youichi-uda/sbomhub-cli/releases/download/v#{version}/sbomhub_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_AMD64"
    end

    on_arm do
      url "https://github.com/youichi-uda/sbomhub-cli/releases/download/v#{version}/sbomhub_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/youichi-uda/sbomhub-cli/releases/download/v#{version}/sbomhub_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_AMD64"
    end

    on_arm do
      url "https://github.com/youichi-uda/sbomhub-cli/releases/download/v#{version}/sbomhub_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
  end

  def install
    bin.install "sbomhub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sbomhub version")
  end
end
