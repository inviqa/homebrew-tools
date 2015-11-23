cask :v1 => 'hem' do
  version '1.0.0-dev.1'
  sha256 '1af5699187a1b31d55eb6a13510f1c3b6afa5046c1ae2f8cedcf7d320e5b5600'

  url "https://s3-eu-west-1.amazonaws.com/inviqa-public-tools/hem/versions/#{version}/hem-#{version}.dmg"
  name 'Vagrant'
  homepage 'https://github.com/inviqa/hem-gem'
  license :mit

  pkg 'hem-1.0.0-dev+20151120101714-1.pkg'

  caveats <<-EOS.undent
  To enable access to the ruby installation and installed gems,
  add to your profile:
    if which rbenv > /dev/null; then eval "$(hem shell-init bash --skip-host-checks)"; fi
  EOS
end