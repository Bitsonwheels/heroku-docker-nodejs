FROM heroku/nodejs
RUN apt-get update && apt-get install -y postgresql-client-9.3 && /
curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -c beta

