cask 'hem' do
  version '1.2.2-1'
  sha256 '88767892a2ea032b57417fc61ff8a0a3a0cb5665d867dea57ac4968f6aa83acf'

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
