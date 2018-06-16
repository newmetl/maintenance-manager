server '46.101.156.227', user: 'rails', roles: %w(web app db)
set :branch, 'production'
set :application, 'maintenance_manager'
set :deploy_to, '/home/rails/production/'
set :rails_env, :production
# Default value for keep_releases is 5
set :keep_releases, 5
# set :default_env, {
#   'PATH' => 'PATH=$PATH:/home/app/production/shared/bundle/ruby/2.4.0/bin'
# }

# namespace :deploy do
#   desc 'Restart application'
#   task :restart do
#     on roles(:app), in: :sequence, wait: 5 do
#       execute :touch, release_path.join('tmp/restart.txt')
#     end
#   end

#   desc "Bundle for backup gem"
#   task :bundle_for_backup do
#     on roles :all do
#       execute "cd #{release_path}/config/backup && bundle install --path #{shared_path}/backup --quiet --deployment"
#     end
#   end

#   after :publishing, 'deploy:restart'
#   after :updated, 'deploy:bundle_for_backup'
#   after :finishing, 'deploy:cleanup'
#   after :finishing, 'deploy:update_cron'
# end
