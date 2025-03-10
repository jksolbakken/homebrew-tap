# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gofollower < Formula
  desc "Command-line utility for following HTTP links"
  homepage "https://github.com/jksolbakken/gofollower"
  version "1.20250310130902"

  on_macos do
    on_intel do
      url "https://github.com/jksolbakken/gofollower/releases/download/1.20250310130902/gofollower_1.20250310130902_darwin_amd64.tar.gz"
      sha256 "a3579599a5de30247a2fe4b6a5c2170a3b9d9d010cb41a7629717ebb9a35719d"

      def install
        bin.install "follow"
      end
    end
    on_arm do
      url "https://github.com/jksolbakken/gofollower/releases/download/1.20250310130902/gofollower_1.20250310130902_darwin_arm64.tar.gz"
      sha256 "05587ad10ca91524da4c7d76ec8eeba11bd91d6e70fe1b626c5f6263054d8ab5"

      def install
        bin.install "follow"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jksolbakken/gofollower/releases/download/1.20250310130902/gofollower_1.20250310130902_linux_amd64.tar.gz"
        sha256 "6c236e5625bcdd26c299ad9065c33fc35e0c8db3108e972f5cffb9629bada3e3"

        def install
          bin.install "follow"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jksolbakken/gofollower/releases/download/1.20250310130902/gofollower_1.20250310130902_linux_arm64.tar.gz"
        sha256 "58e7330496d5cdb5f6aeb937281762db2b7333beab00132cb0fc2bdc58d747c0"

        def install
          bin.install "follow"
        end
      end
    end
  end

  test do
    assert_match version, shell_output("#{bin}/follow version")
  end
end
