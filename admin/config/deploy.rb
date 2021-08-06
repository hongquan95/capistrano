# config valid for current version and patch releases of Capistrano
# Config valid only for current version of Capistrano
lock "#{ENV['CAP_VERSION']}"


set :application, "cap_api_2"
set :repo_url, proc { "#{ENV['GIT_SOURCE']}/#{fetch(:application)}.git" }

# Default branch is :master
set :branch, fetch(:branch, 'master')

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, fetch(:deploy_to, '/var/www/html')

# Default value for :format is :airbrussh.
set :format, :airbrussh


# Default value for :pty is false
set :pty, true


# Default value for :linked_files is []
append :linked_files, ".env"

# Default value for linked_dirs is []
append :linked_dirs, "storage", "vendor", "public/uploads"


# Default value for keep_releases is 5
set :keep_releases, 5


namespace :deploy do
  before :finished, "composer:install"
  before :finished, "composer:dump_autoload"
  after :finished, :cleanup
end
