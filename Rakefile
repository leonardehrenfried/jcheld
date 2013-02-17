# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)
require 'rake'

Jcheld3::Application.load_tasks

task :getdb do
  sh "scp lenni.info:webapps/jcheld/db/development.sqlite3 db"
  sh "scp lenni.info:webapps/jcheld/db/production.sqlite3 db"
end

