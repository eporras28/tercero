set :branch, ENV.fetch("CAPISTRANO_BRANCH", "development")
set :mb_sidekiq_concurrency, 1

server "staging.tercer-afrodita",
       :user => "deployer",
       :roles => %w(app backup cron db redis sidekiq web)
