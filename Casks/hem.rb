cask 'hem' do
  version '1.2.0-1'
  sha256 '539f876a0cf317f3d12ca59301ef29b18ab07f538ea524559c5f2132b3abcc16'

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
