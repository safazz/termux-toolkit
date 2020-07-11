import sys,os,time,requests,mechanize,socket,urllib2

ip=raw_input("\033[00m[\033[1;31m+\033[00m] IP\033[1;31m: \033[0;32m")
print "\033[00m[\033[1;33m+\033[00m] Scanning Whois \033[1;32m"+ip+"\033[00m"
host = socket.getfqdn(ip)
url = urllib2.urlopen('https://api.hackertarget.com/whois/?q='+ip).read().rstrip()
print url
