# Libraries
sudo apt install postfix mailutils

# Postfix Commands
sudo postfix status
sudo postfix start

# Ufw commands
sudo ufw reset
sudo ufw enable
sudo ufw allow 25
sudo ufw delete allow 25

# Copy
cp /etc/postfix/main.cf /etc/postfix/mainorig.cf

# Configuring Postfix
sudo nano /etc/postfix/main.cf
# things to change in config file
# home_mailbox = Maildir/ 
# mydestination = $myhostname, localhost.$mydomain, $mydomain
# myhostname = mail.example.com
# mydomain = example.com

# sudo postconf -e 'home_mailbox= Maildir/'

# Adding user to ubuntu server
sudo adduser username

# Install nmap
sudo apt-get install nmap

# Install ufw
sudo apt-get install ufw

# Checking port 25
nmap -p 25 localhost

# Restart Postfix
sudo systemctl restart postfix


# Test Email sending
telnet localhost 25

ehlo localhost
mail from: root@localhost
rcpt to: user_email_id
data
Subject: My first mail on postfix

Hello World,
Yoyoyo
.


# Read the email in the user folder








