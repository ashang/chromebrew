require 'package'

class Bigreqsproto < Package
  description 'The protocols for the X window system provide extended functionality for communication between a X client and the server.'
  homepage 'https://x.org'
  version '1.1.2'
  source_url 'https://www.x.org/archive/individual/proto/bigreqsproto-1.1.2.tar.gz'
  source_sha256 'de68a1a9dd1a1219ad73531bff9f662bc62fcd777387549c43cd282399f4a6ea'

  def self.build
    system "./configure"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
