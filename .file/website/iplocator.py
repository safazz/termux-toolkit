
import json,urllib2
joker=raw_input("\033[00m[\033[1;31m+\033[00m] IP\033[1;31m: \033[0;32m")
url = "http://ip-api.com/json/"
reponse = urllib2.urlopen(url + joker)
name = reponse.read()
labs = json.loads(name)
print("")
print("\033[00m[\033[1;32m+\033[00m] IP\033[1;31m: \033[1;32m" + labs['query'])
print("\033[00m[\033[1;32m+\033[00m] Status\033[1;31m: \033[1;32m" + labs['status'])
print("\033[00m[\033[1;32m+\033[00m] Region\033[1;31m: \033[1;32m" + labs['regionName'])
print("\033[00m[\033[1;32m+\033[00m] Country\033[1;31m: \033[1;32m" + labs['country'])
print("\033[00m[\033[1;32m+\033[00m] City\033[1;31m: \033[1;32m" + labs['city'])
print("\033[00m[\033[1;32m+\033[00m] ISP\033[1;31m: \033[1;32m" + labs['isp'])
print("\033[00m[\033[1;32m+\033[00m] Lat,Lon\033[1;31m: \033[1;32m" + str(labs['lat']) + "," + str(labs['lon']))
print("\033[00m[\033[1;32m+\033[00m] ZIPCODE\033[1;31m: \033[1;32m" + labs['zip'])
print("\033[00m[\033[1;32m+\033[00m] TimeZone: \033[1;32m" + labs['timezone'])
print("\033[00m[\033[1;32m+\033[00m] AS\033[1;31m: \033[1;32m" + labs['as'] + "\n")
