# STEGNO:

https://www.yeahhub.com/top-steganography-tools-ctf-challenges/

**fix corrupted compressed file:**

https://extract.me/

# BINWALK:
binwalk --dd='.*' filename


# Encoding:
*Jsf**k*

http://codertab.com/JsUnFuck

http://www.jsfuck.com/ 

https://copy.sh/brainfuck/text.html 

*Dancing Men Chiper* 

https://www.dcode.fr/dancing-men-cipher 

*Mores Code*

https://morsify.net/

https://morsecode.world/international/translator.html 


*XOR online (stream cipher)*

https://wiremask.eu/tools/xor-cracker/

**All encodings**

https://gchq.github.io/CyberChef/


# OPENSSL:
```
openssl enc -in msgfile -out binarytext -d -a && openssl rsautl -decrypt -in binarytext -out planetxt -inkey keyfile && cat planetext
```
```
openssh s_client -connect localhost:port
```

# SQL INJECTION:

```
test ' || (select sql from sqlite_master) || '

test '|| (select password from xde43_users where role="admin" ) ||'
```
# WIFI CRACK:
*to catpture hadshack:*
	
	wifite -i wlan1
	
*convert handshack file to hashcat format:*
	
	aircrack-ng -J file handshack.cap
	
	this would genereate file.hccap

convert hccap file to password crackers format

**	jhon the ripper:**	

hccap2jhon file.hccap > file.txt

this would generat txt file to be cracked by jhon the ripper

*hashcat format:*

cap2hccapx "the cap file(handcheck)" output.hccapx
	
	                              **OR**

http://hashcat.net/cap2hccapx
	
# PASSWORD CRACKING:
jhon password file

```
jhon --wordlist=*path of the dictinory* the hash file
```
johnny

crunch "minimum lignth" "maximum linth" "cherchterset"
```
crunch 10 10 -t @@@@@@0728 -o /root/birthdaywordlist.lst
```
it is a 10 charachters password generator with known plane text "728"

directing output  " -o- " to /root/wordlist.lst

# REVERSE:

objdump

# HASHCAT:

bruteforce masking attack
```

hashcat -a 3 -m 0 85230538de31d48a4cf863b6abfed82b FLAG{?a?a?a?a?a}
 ```
 optional: -w 3
 
hashcat -a 3 -w 3 -m 2500 all.hccapx ?l?l?l?l?d?d?d?d

-a 0 for dictionary attack

-o path of the output file if needed


list of cracked hashes:

cat /root/.hashcat/hashcat.potfile

# BASE monopelation:

base64 -d test | hexdump -C

base64 -d test | xxd -p


# HASH:

https://hashkiller.co.uk/

https://www.tunnelsup.com/hash-analyzer/


# CRYPTOGRAPHY:

www.dcode.fr

cryptii.com

quipqiup.com 

planetcalc.com

sprenger.com   (books)



* if IC (index of coincedance) is ARROUND .038 the encryption is POLYALPHAPITIC

u might use dcode fr to calculate the key lingth
* if IC is ARROUND .067 the encryption is MONOALPHAPTIIC
	* if LETTER FREQUANCY is LIKE ENGLISH the encryption is TRANSPOSITION
	* if LETTER FREQUANCY is not LIKE ENGLISH the encryption is SHIFT CIPHER
```
HILL CIPHER:
			       |C0|    |a   b|   |M0|		|C2|    |a   b|   |M2|
		C = K M	       |  |  = |     | * |  |	  & 	|  |  = |     | * |  |
			       |C1|    |c   d|   |M1|		|C3|    |c   d|   |M3|
			C0=aM0+bM1			  &	C2=aM2+bM3
			C1=cM0+dM1			  &	C3=cM2+dM3

			       |M0|    |e   f|   |C0|		|M2|    |e   f|   |C2|
		M = K-1        |  |  = |     | * |  |	  & 	|  |  = |     | * |  |
			       |M1|    |g   h|   |C1|		|M3|    |g   h|   |C3|
			M0=eC0+fC1			  &	M2=eC2+fC3
			M1=gC0+hC1			  &	M3=gC2+hC3

```
##Discrete Logarithm Problem:

```
  phi(n) = (p-1)*(q-1)
  where *p,q* are primes and n = p * q 

```

```
       b
  Y = a  mod p
  
  2 = dlog  4
         2,5

  b = dlog  Y
         a,p
```

where *p* is a prime number and *a* is a generator of *p*

# SNOW:

to hide a message:
```
snow -C -m "the secrit message" -p "password" inputfile outputfile
```

to unhide message:
```
snow -C -p "password" outputfile
```
or -Q

-p is only needed if you are going to use a password


# File carving:

dd if=./file_with_a_file_in_it.xxx of=./extracted_file.xxx bs=1 skip=[befor the start of the file in bytes] count=[file lingh]



# Web:

pybass ip filter 
```
X-Forwarded-For: [ip address from the allow list (i used  127.0.0.1 as localhost should normaly be allowed)]
```


#direct error to null screen (do not show errors)

```
command 2>/dev/null

```
where:

stdin – 0 – Standard Input (usually keyboard or file)

stdout – 1 – Standard Output (usually screen)

stderr – 2 – Standard Error (usually screen)


#Reverse Hex Dump:

```
xxd -r file > output
```
#SSH

```
ssh -i [key file path] user@host -p [port number] [command]

```

the [command] will be executed just after loging
#VI

before every action dont forget the "esc"
 
  i insert
  :q quit
  :q! quit without saving
  :x save and exit
 


