cask 'hem' do
  version '1.2.3-1'
  sha256 '78e41ce9924c74880fe370fcb328e0eec85c4bd040f1f8850761e5b2a9398920'

  url "https://dx6pc3giz7k1r.cloudfront.net/hem/versions/#{version}/hem-#{version}.dmg"
  name 'Hem'
  homepage 'https://github.com/inviqa/hem'
  license :mit

  pkg "hem-#{version}.pkg"

  caveats <<-EOS.undent
  To enable access to the ruby installation and installed gems,
  add to your profile:
    if which hem > /dev/null; then eval "$(hem shell-init bash)"; fi
  EOS
end
