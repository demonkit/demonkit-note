deny ips:  
iptables -I INPUT -p tcp -m tcp --dport [PORT] -j REJECT

allow ip and port:  
`iptables -I INPUT -s [IP] -p tcp -m tcp --dport [PORT] -j ACCEPT`


This is from: (http://unix.stackexchange.com/questions/145929/how-to-ensure-ssh-port-is-only-open-to-a-specific-ip-address)[http://unix.stackexchange.com/questions/145929/how-to-ensure-ssh-port-is-only-open-to-a-specific-ip-address]
