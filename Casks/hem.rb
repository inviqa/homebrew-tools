cask 'hem' do
  version '1.1.1-2'
  sha256 'b728e91cb1d9084ea34da6eae77c3a8e0c6cac20eaf7822353210b69ecd15cc0'

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
