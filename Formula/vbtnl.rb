class Vbtnl < Formula
  desc "Публичные HTTPS-туннели к localhost"
  homepage "https://vbtnl.com"
  version "0.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/scooby87/vbtnl-releases/releases/download/v#{version}/vbtnl_#{version}_darwin_arm64.tar.gz"
      sha256 "REPLACE_WITH_ARM64_SHA256"
    else
      url "https://github.com/scooby87/vbtnl-releases/releases/download/v#{version}/vbtnl_#{version}_darwin_amd64.tar.gz"
      sha256 "REPLACE_WITH_AMD64_SHA256"
    end
  end

  def install
    bin.install "vbtnl-client" => "vbtnl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vbtnl --version")
  end
end
