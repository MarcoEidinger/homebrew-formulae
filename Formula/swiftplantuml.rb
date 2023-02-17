class Swiftplantuml < Formula
  desc "Generate UML class diagrams from Swift sources"
  homepage "https://github.com/MarcoEidinger/SwiftPlantUML"
  url "https://github.com/MarcoEidinger/SwiftPlantUML/archive/0.7.4.tar.gz"
  sha256 "8b8678f7a307448b3147b8fcfb09bca68ecdf124c2cc6ed7a9c2f4e8be302bde"
  license "MIT"

  depends_on xcode: ["12.2", :build]

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/swiftplantuml", "--help"
  end
end
