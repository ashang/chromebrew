require 'package'

class Libpcap < Package
  description 'A portable C/C++ library for network traffic capture.'
  homepage 'http://www.tcpdump.org/'
  version '1.8.1'
  source_url 'http://www.tcpdump.org/release/libpcap-1.8.1.tar.gz'
  source_sha256 '673dbc69fdc3f5a86fb5759ab19899039a8e5e6c631749e48dcd9c6f0c83541e'

  depends_on "buildessential"
  depends_on "bison"
  depends_on "flex"

  def self.build
    system "./configure --prefix=/usr/local"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
