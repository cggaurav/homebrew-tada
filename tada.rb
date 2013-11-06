require 'formula'

class Tada < Formula
  homepage 'https://github.com/cggaurav/tadaa'
  url 'https://github.com/cggaurav/homebrew-tada/archive/1.0.tar.gz'
  sha1 '3c50f503a96f9a4fba6b4264bf281e397d13e869'
  version '1.0'
  depends_on 'commander' => :ruby

  def install
    bin.install './lib/tada.rb' => "tada"
  end
end