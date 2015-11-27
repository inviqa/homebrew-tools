cask :v1 => 'hem' do
  version '1.0.0-0.1.dev'
  sha256 '558c5c705b005cf2663a78c8cedaf465f29ff9da60df7499859a89e9f20fd9f3'

  url "https://dx6pc3giz7k1r.cloudfront.net/hem/versions/#{version}/hem-#{version}.dmg"
  name 'Hem'
  homepage 'https://github.com/inviqa/hem'
  license :mit

  pkg 'hem-#{version}.pkg'

  caveats <<-EOS.undent
  To enable access to the ruby installation and installed gems,
  add to your profile:
    if which rbenv > /dev/null; then eval "$(hem shell-init bash --skip-host-checks)"; fi
  EOS
end
