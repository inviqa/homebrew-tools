cask 'hem' do
  version '1.2.4-2'
  sha256 '1d94de60bbcdc4e595ad4e714650f50e15f923d1b7224d9aced7a078e272124d'

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
