cask :v1 => 'hem' do
  version '1.0.1-0.1.beta1'
  sha256 '42af78a06f4e1fb9e96ac4e20ae498cdb90dc439bf5d455a8fc13d90bff8ace8'

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
