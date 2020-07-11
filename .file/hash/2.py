import hashlib
text = raw_input("\033[00m[\033[1;31m+\033[00m] Text\033[1;31m: \033[0;36m")
m = hashlib.new('md5')
m.update(text)
md5 = m.hexdigest()
print "\033[00m[\033[1;32m+\033[00m] MD5 \033[1;31m: \033[0;33m"+md5
