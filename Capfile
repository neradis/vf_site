# Load DSL and Setup Up Stages
require 'capistrano/setup'

# Includes default deployment tasks
require 'capistrano/deploy'

# Includes tasks from other gems included in your Gemfile
#
# For documentation on these, see for example:
#
#   https://github.com/capistrano/rvm
#   https://github.com/capistrano/rbenv
#   https://github.com/capistrano/chruby
#   https://github.com/capistrano/bundler
#   https://github.com/capistrano/rails
#
# require 'capistrano/rvm'
# require 'capistrano/rbenv'
# require 'capistrano/chruby'
# require 'capistrano/bundler' #we cannot use it since we need the non-login workaround
require 'capistrano/rails/assets'
require 'capistrano/rails/migrations'
require 'capistrano/postgresql'

#SSH commands from Capistrano are executed in non-login shells, so we have to ensure
#with this workaround that RVM is loaded before runnting bundle exec commands
%i(rake rails).each { |cmd|
  SSHKit.config.command_map.prefix[cmd].push("source $HOME/.bash_profile && bundle exec")
}


# Loads custom tasks from `lib/capistrano/tasks' if you have any defined.
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
