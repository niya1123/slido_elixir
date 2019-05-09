apt-get update
apt-get install -y postgresql
service postgresql start
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres'"
service postgresql restart
mix phx.new slido --no-brunch