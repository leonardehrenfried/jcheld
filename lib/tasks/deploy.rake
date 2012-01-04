ssh_user = "lenni@lenni.info" # for rsync deployment
remote_root = "webapps/jcheld"        # for rsync deployment

desc "Clears the styles, generates new ones and then deploys the theme"
task :deploy do
  puts "*** Prevcompiling assets ***"
  sh "bundle exec rake assets:precompile"
  puts "*** Deploying the site ***"
  sh "rsync -r --exclude=log/* --exclude=script/* --exclude=.git/* . #{ssh_user}:#{remote_root}"
  puts "*** Restarting server ***"
  #puts "*** Copying remote development.sqlite to production.sqlite ***"
  #sh "scp db/development.sqlite3 #{ssh_user}:#{remote_root}/db/production.sqlite3"
  #sh "ssh #{ssh_user} \"rm ~/webapps/jcheld/public/stylesheets/styles.css\""
  puts "*** Restarting passenger ***"
  sh "ssh #{ssh_user} \"touch ~/#{remote_root}/tmp/restart.txt\""
end
