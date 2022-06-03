sudo zypper install grafana

sudo grafana-server -v

sudo systemctl start grafana-server

sudo systemctl status grafana-server

sudo firewall-cmd --permanent --add-port=3000/tcp

sudo firewall-cmd --reload

#to locate the ports 

ss -ltp
#or netstat -lptnb for the netstat, to access http://localhost:3000/
