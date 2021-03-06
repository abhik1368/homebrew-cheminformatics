require 'formula'

class Osra < Formula
  homepage ''
  url 'http://sourceforge.net/projects/osra/files/osra/2.0.0/osra-2.0.0.tgz'
  sha1 '318862b556014066d68342a843a470993877e8a9'

  depends_on 'freetype'
  depends_on 'libpng'
  depends_on 'libtiff'
  depends_on 'lcms'
  depends_on 'jasper'
  depends_on 'potrace'
  depends_on 'jpeg'
  depends_on 'ocrad'
  depends_on 'tclap'
  depends_on 'mcs07/cheminformatics/gocr' => 'with-lib'
  depends_on 'mcs07/cheminformatics/open-babel'
  depends_on 'graphicsmagick'
  depends_on 'ghostscript' => :optional

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    system "#{bin}/osra --help"
  end
end
