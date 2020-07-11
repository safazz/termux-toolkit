import hashlib
text = raw_input("\033[00m[\033[1;31m+\033[00m] Text\033[1;31m: \033[0;36m")
m = hashlib.new('sha512')
m.update(text)
md4 = m.hexdigest()
print "\033[00m[\033[1;32m+\033[00m] \033[00mSHA512\033[1;31m: \033[0;33m"+md4
