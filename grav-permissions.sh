addgroup web
adduser root web
adduser nobody web
cd /srv/src
chown -R root:web .
find . -type f | xargs chmod 664
find ./bin -type f | xargs chmod 775
find . -type d | xargs chmod 775
find . -type d | xargs chmod +s