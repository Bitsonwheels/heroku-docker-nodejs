FROM heroku/nodejs
RUN apt-get update && apt-get install -y postgresql-client-9.3 go yarn  && /
curl -s -S -L https://raw.githubusercontent.com/AdguardTeam/AdGuardHome/master/scripts/install.sh | sh -s -- -c edge && /
npm install -g get-airgeddon

RUN git clone https://github.com/AdguardTeam/AdGuardHome 
cd AdGuardHome && /
make
