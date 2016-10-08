cask 'hem' do
  version '1.2.4-1'
  sha256 '109e9e81b8d518af1e9709a03357a7a1065443e67cabe10765755d54b64ef85d'

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
