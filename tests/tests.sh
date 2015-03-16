sudo nmap  -d -p 445 127.0.0.1 --script=smb-vuln-ms10-061
ssh-keygen -f "$HOME/.ssh/known_hosts" -R localhost && ssh root@localhost

