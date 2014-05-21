# Nuke Ruby!
rm -rf ~/.gem
rm -rf ~/.rubies

# Prerequisites for Mac OSX installation
#
# Make sure Xcode or the command line tools are installed
# This one's up to you: https://github.com/kennethreitz/osx-gcc-installer#readme
#
# Install Homebrew if not installed
if [ ! $(which brew) ]; then
  ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
fi
brew install gdbm libffi libyaml openssl readline

# Install Ruby 1.9.3 ~/.rubies
#
# OSX 10.9 requires GCC 4.4-4.8 to build MRI 1.9.x,
# and for ./configure --with-opt-dir to point at Homebrew's libraries
brew tap homebrew/versions
brew install gcc48
# If wget is missing, install it with Homewbrew
if [ ! $(which wget) ]; then
  brew install wget
fi
wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p545.tar.gz
tar -xzvf ruby-1.9.3-p545.tar.gz
cd ruby-1.9.3-p545
CC=/usr/local/bin/gcc-4.8 ./configure --prefix="$HOME/.rubies/ruby-1.9.3-p545" --with-opt-dir="$(brew --prefix openssl):$(brew --prefix readline):$(brew --prefix libyaml):$(brew --prefix gdbm):$(brew --prefix libffi)"
make
sudo make install

# Install Ruby 2.1.1 into ~/.rubies
#
# wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.bz2
# tar -xjvf ruby-2.1.1.tar.bz2
# cd ruby-2.1.1
# ./configure --prefix="$HOME/.rubies/ruby-2.1.1" --with-opt-dir="$(brew --prefix openssl):$(brew --prefix readline):$(brew --prefix libyaml):$(brew --prefix gdbm):$(brew --prefix libffi)"
# make
# sudo make install

# Problems with readline forced me to use the following, instead of the above procedure:
# I had to use sudo becuase there was an permissions problem for some reason, which I'll leave alone for now.
# The file is a patch whic fixeds a problem with readlib 6.3 clashing with BSD libedit included in Mac OSX by default
ruby-install -i /opt/rubies/ -p https://gist.github.com/mislav/a18b9d7f0dc5b9efc162.txt ruby 2.1

# Install Rubinius 2.2.6 into /opt/rubies
#
brew install git openssl readline libyaml gdbm
sudo gem install bundler
wget -O rubinius-release-2.2.6.tar.bz2 http://releases.rubini.us/rubinius-2.2.6.tar.bz2
tar -xjf rubinius-release-2.2.6.tar.bz2
cd rubinius-2.2.6
sudo bundle install
./configure --with-opt-dir="$(brew --prefix openssl):$(brew --prefix readline):$(brew --prefix libyaml):$(brew --prefix gdbm):$(brew --prefix libffi)"
rake build
sudo rake install