adduser deploy && gpasswd -a deploy sudo && usermod -aG sudo,www-data deploy && su - deploy
ssh-keygen -t rsa

apt-get install postgresql postgresql-contrib libpq-dev curl git-core nginx nodejs-legacy -y
sudo -i -u postgres
createuser --interactive

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash && source /home/deploy/.rvm/scripts/rvm
rvm install 2.3.1 && rvm use 2.3.1 --default && gem update --system
gem install pg -V --no-ri --no-rdoc && gem install bundler -V --no-ri --no-rdoc && gem install rails -V --no-ri --no-rdoc

rails new blog -d postgresql
rails g scaffold Post title content
rails db:create
rails db:migrate
rails s --binding=

RAILS_ENV=production rails db:create
RAILS_ENV=production rails db:migrate
RAILS_ENV=production rails secret
RAILS_ENV=production rails assets:precompile
RAILS_ENV=production rails server --binding=

FOR 16
sudo apt-get install upstart-sysv
sudo update-initramfs -u
sudo reboot

FOR 14
unset XDG_RUNTIME_DIR

#   sudo start puma app=PATH_TO_APP
#   sudo stop puma app=PATH_TO_APP
#   sudo status puma app=PATH_TO_APP



access_log /home/user/apps/appname/current/log/nginx.access.log;
error_log /home/user/apps/appname/current/log/nginx.error.log info;

error_log /home/user/apps/appname/shared/log/puma.stderr.log;
