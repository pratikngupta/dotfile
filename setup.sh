# install homebrew
if [ ! -d /opt/homebrew ]; then
  echo "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# install ruby via chruby
if [ ! -d /opt/homebrew/opt/chruby ]; then
  echo "Installing chruby..."
  brew install chruby
  # add chruby to zshrc
  source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
  source /opt/homebrew/opt/chruby/share/chruby/auto.sh
fi

# install ruby and set it as default version
if [ ! -d /opt/homebrew/opt/ruby/bin/ruby ]; then
  echo "Setting ruby as default version..."
  chruby ruby-3.4.2
fi

