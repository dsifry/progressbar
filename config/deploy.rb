set :application, "progressbar"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/home/placedemo/"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
set :scm, "git"
set :repository, "git@github.com:dsifry/progressbar.git"
set :branch, "master"
set :deploy_via, :remote_cache

set :user, 'dsifry'
set :ssh_options, { :forward_agent => true }
set :scm_verbose, true
set :use_sudo, false

role :app, "ob.gd"
role :web, "ob.gd"
role :db,  "ob.gd", :primary => true

namespace :deploy do
  desc "Restarting mod_rails with restart.txt"
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_path}/tmp/restart.txt"
  end

  [:start, :stop].each do |t|
    desc "#{t} task is a no-op with mod_rails"
    task t, :roles => :app do ; end
  end
end