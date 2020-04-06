# STEGNO:

https://www.yeahhub.com/top-steganography-tools-ctf-challenges/
fix corrupted compressed file:
https://extract.me/

# BINWALK:
binwalk --dd='.*' filename


# Encoding:
Jsf**k 
http://www.jsfuck.com/ 
Dancing Men Chiper 
https://www.dcode.fr/dancing-men-cipher 
Mores Code 
XOR online (stream cipher):
https://wiremask.eu/tools/xor-cracker/
https://morsify.net/
https://morsecode.world/international/translator.html 
Brain code 
https://copy.sh/brainfuck/text.html 
https://gchq.github.io/CyberChef/


# OPENSSL:

openssl enc -in msgfile -out binarytext -d -a && openssl rsautl -decrypt -in binarytext -out planetxt -inkey keyfile && cat planetext

# SQL INJECTION:


test ' || (select sql from sqlite_master) || '
test '|| (select password from xde43_users where role="admin" ) ||'

# WIFI CRACK:
to catpture hadshack:
	wifite -i wlan1
convert handshack file to hashcat format:
	aircrack-ng -J file handshack.cap
	this would genereate file.hccap
convert hccap file to password crackers format
	jhon the ripper:	
	hccap2jhon file.hccap > file.txt
	this would generat txt file to be cracked by jhon the ripper
	hashcat format:
	cap2hccapx "the cap file(handcheck)" output.hccapx
	OR
	http://hashcat.net/cap2hccapx
# PASSWORD CRACKING:
jhon password file
johnny
 crunch "minimum lignth" "maximum linth" "cherchterset"
# REVERSE:
objdump
# HASHCAT:
 hashcat -a 3 -m 0 85230538de31d48a4cf863b6abfed82b ASCWG{?a?a?a?a?a}
cat *.hccapx > all.hccapx

 cat /root/.hashcat/hashcat.potfile

# BASE monopelation:
base64 -d test | hexdump -C
base64 -d test | xxd -p


 hashcat -a 3 -w 3 -m 2500 all.hccapx ?l?l?l?l?d?d?d?d
-a 0 for dictionary attack
-o path of the output file if needed




# CRYPTOGRAPHY:
www.dcode.fr
cryptii.com
quipqiup.com 
planetcalc.com
sprenger.com   (books)


# HASH:
https://hashkiller.co.uk/
https://www.tunnelsup.com/hash-analyzer/


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

# SNOW:

to hide a message:
snow -C -m "the secrit message" -p "password" inputfile outputfile
to unhide message:
snow -C -p "password" outputfile
or -Q
-p is only needed if you are going to use a password


# File carving:

dd if=./file_with_a_file_in_it.xxx of=./extracted_file.xxx bs=1 skip=[befor the start of the file in bytes] count=[file lingh]

