cask :v1 => 'hem' do
  version '1.0.1-0.2.beta2'
  sha256 '2b630f3456bec1451e8a49e15b517272190f3bd936b57adb87ea9a0197cceb81'

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
