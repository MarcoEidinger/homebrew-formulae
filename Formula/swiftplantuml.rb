class Swiftplantuml < Formula
  desc "Generate UML class diagrams from Swift sources"
  homepage "https://github.com/MarcoEidinger/SwiftPlantUML"
  url "https://github.com/MarcoEidinger/SwiftPlantUML/archive/0.4.0.tar.gz"
  sha256 "25ee27ecc143c5264951e05ea40ce32e881dcf08ab88d3c499f97555eefd2618"
  license "MIT"

  depends_on xcode: ["12.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swiftplantuml", "--help"
  end
end
