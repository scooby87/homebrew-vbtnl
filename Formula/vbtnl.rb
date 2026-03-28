class Vbtnl < Formula
  desc "Публичные HTTPS-туннели к localhost"
  homepage "https://vbtnl.com"
  version "0.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/scooby87/vbtnl-releases/releases/download/v#{version}/vbtnl_#{version}_darwin_arm64.tar.gz"
      sha256 "f1bbeab3e272bf43e22cd39b43c805d4cbfbaaf4001296632e7d9c1ff780a049"
    else
      url "https://github.com/scooby87/vbtnl-releases/releases/download/v#{version}/vbtnl_#{version}_darwin_amd64.tar.gz"
      sha256 "677ba02fef5a197defbab00c75c14c847516bb93f4765bce1521b38537fe81f9"
    end
  end

  def install
    bin.install "vbtnl-client" => "vbtnl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vbtnl --version")
  end
end
