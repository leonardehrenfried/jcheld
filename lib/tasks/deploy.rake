ssh_user = "lenniboy@railspg" # for rsync deployment
remote_root = "railsapps/jcheld" # for rsync deployment

desc "Clears the styles, generates new ones and then deploys the theme"
task :deploy do
  system("touch tmp/restart.txt")
  puts "*** Deploying the site ***"
  system("rsync -r --exclude=config/initializers/cookie_verification_secret.rb --exclude=log/* --exclude=script/* --exclude=.hg/* . #{ssh_user}:#{remote_root}")
  puts "*** Restarting server ***"
  puts "*** Copying remote development.sqlite to production.sqlite ***"
  system("scp db/development.sqlite3 #{ssh_user}:#{remote_root}/db/production.sqlite3")
  puts "*** Deleting CSS cache ***"
  system('ssh railspg "rm ~/railsapps/jcheld/public/stylesheets/styles.css"') 
end
