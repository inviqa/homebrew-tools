cask 'hem' do
  version '1.1.0-2'
  sha256 '41216bb94e32921cf8dcb8d51a6e6a9e32b95b55be9b2137fab0db16f663d77b'

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
