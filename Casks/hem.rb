cask :v1 => 'hem' do
  version '1.0.1-0.1.beta1'
  sha256 'be6e2ca82003194bf20061da1eb52b01d81b226f9c77bee3f4d67e7424139edc'

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
