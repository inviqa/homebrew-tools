cask :v1 => 'hem' do
  version '1.0.1-0.4.beta4'
  sha256 '1f8fb222ec25c53cea5e7a5f5aeb19b10cb6be61f83926f077d6a69e35d38229'

  url "https://dx6pc3giz7k1r.cloudfront.net/hem/versions/#{version}/hem-#{version}.dmg"
  name 'Hem'
  homepage 'https://github.com/inviqa/hem'
  license :mit

  pkg "hem-#{version}.pkg"

  caveats <<-EOS.undent
  To enable access to the ruby installation and installed gems,
  add to your profile:
    if which hem > /dev/null; then eval "$(hem shell-init bash --skip-host-checks)"; fi
  EOS
end
