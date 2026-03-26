class Vbtnl < Formula
  desc "Публичные HTTPS-туннели к localhost"
  homepage "https://vbtnl.com"
  version "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/scooby87/vbtnl-releases/releases/download/v#{version}/vbtnl_#{version}_darwin_arm64.tar.gz"
      sha256 "4fb99be3a0530659ff14c7c5e98f9af27fdc4b6c2c3e18af6242a31bac2008b3"
    else
      url "https://github.com/scooby87/vbtnl-releases/releases/download/v#{version}/vbtnl_#{version}_darwin_amd64.tar.gz"
      sha256 "45e0b420d5ace4046caf306447288d1b62a28dcecce34626af764de02fc80baa"
    end
  end

  def install
    bin.install "vbtnl-client" => "vbtnl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vbtnl --version")
  end
end
