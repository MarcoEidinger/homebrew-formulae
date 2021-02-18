class Swiftplantuml < Formula
  desc "Generate UML class diagrams from Swift sources"
  homepage "https://github.com/MarcoEidinger/SwiftPlantUML"
  url "https://github.com/MarcoEidinger/SwiftPlantUML/archive/0.2.1.tar.gz"
  sha256 "49fd20113888acd146865057f36c8ce9c5425971c0747ce6debf1afbac62119b"
  license "MIT"

  depends_on xcode: ["12.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swiftplantuml", "--help"
  end
end
