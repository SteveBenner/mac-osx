# Preferable alternatives to using bash aliases

# Bash scripts
#
scripts = {
  '/usr/local/bin' => {
  	# opens the 'master' profile configuration file in Sublime Text (using the sublime executable)
  	profile: 'sublime ~/.bashrc',
    # encapsulate Ruby project gem management with Bundler
    bi: 'bundle install --path .bundle/gems --binstubs .bundle/bin'
  }
}

# Symbolic links
#
symlinks = {
  '/usr/local/bin' => {
    # shortcut for Sublime Text 2 (source: http://www.sublimetext.com/docs/2/osx_command_line.html)
    sublime: '/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl'
  }
  '/usr/sbin' => {
  	# to use the 'locate' util you have to run this command a bunch of times
  	updatedb: '/usr/libexec/locate.updatedb',
    # Airport scan utility (requires wifi to function)
    # source: http://www.infoworld.com/d/applications/top-20-os-x-command-line-secrets-power-users-202466
    airport: '/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
  }
}

# todo: add code to create files and symlinks