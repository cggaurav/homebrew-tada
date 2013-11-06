require 'formula'

class Tada < Formula
  homepage 'https://github.com/cggaurav/tadaa'
  url 'https://github.com/cggaurav/homebrew-tada/archive/1.0.tar.gz'
  sha1 '50734dcdf869f8a19b32781cf686dd13b7e90f5b'
  version '1.0'
  depends_on 'commander' => :ruby

  def install
    bin.install './lib/tada.rb' => "tada"
  end
end