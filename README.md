# STEGNO STRATIGY:

## Main track:

```
$ file [filename]
$ strings [filename] | grep (-i, -n) [search keyword]
```

	-I ignore case (upper / lower)
	-n string length in numbers
```

$ hexdump -C [filename] (-n, |head, |tail)
```

	-n: number of bytes to be shown
	Head: shows only 1st bytes of the file
	Tail: shows the ending bytes of the file
```
$ exiftool [filename]
$ binwalk -e [filename]
```
	And it is equivalent to:
```
$binwalk –dd=”.*” [filename]
$ foremost [filename]
$ steghide extract -sf [filename]
```
	Works on jpg and audio file
```
$ stegsolv
$ stegcracker
$ Zsteg
$ stegoveritas
$ pngcheck
$ openstego
$ snow -C -m [the secret message] -p [hiding password] [input file] [output file]
$ snow [C, -Q] -p [the hiding password] [the file name]
```
-C OR -Q are used to unhide the message

-p used only in case of using pasword

Getting snow:
```
$ wget http://www.darkside.com.au/snow/snow-20130616.tar.gz   
$ tar xvzf snow-20130616.tar.gz && cd snow-20130616   
$ make
$ sudo cp snow /usr/bin/snow  
```

## Fix corrupted compressed file:

https://extract.me

## Fix Wave File:

https://www.hecticgeek.com/fix-wav-header-errors-ubuntu-linux/

```
$ sudo apt-get install quelcom 
 
$ qwavinfo [your-audio.wav] 
 
$ qwavheaderdump demo.wav 
```

-F for fix

## Base monopelation:

 decode base64

```
$ base64 -d [name of a file contains base64] OR echo -n "text" | base64 -d
```

same commands valid for any other base encodings (i.e. base32, base58....)

## from hexdump to a file or filr to hexdump:

```
$ xxd -r -p [hexfile] > [file]
$ xxd -p [file] > [hex output file]
```

## File carving:

``
# dd if=[file_with_a_file_in_it] of=[extracted_file] bs=1 skip= [befor the start of the file in bytes] count=[file length in bytes]
``

# PASWORD CRACKING:

office2john (regularly in /usr/share/john/office2john.py)

```
$ python office2john.py [office file] > [hash file] 
```

rar2john (regularly in /usr/sbin/rar2john)

```
$ rar2john [rar file] > [hash file]
```

clean the hash file to start with: $[filetype]$

## John:
```
$ john --wordlist=[path of password file] [the hash file]
$ john –show [the hash file]
```

## hashcat:
```
$hashcat -a [1,2,3] -D [1,2,3] -w [1,2,3,4]  -m [hash related number] [hash] [cracking pattern]
```

### -a for attack mode:

0 for wordlist 

1 more than one wordlist

3 brute force

### -D fore device to use:

2 for GPU

3 FPGA,DSP

### -w for workload

3 high performance

4 nightmare.

###  -m hash type

you can refare to https://hashcat.net/wiki/doku.php?id=example_hashes for hashs formats

In brute-force attack mode u can specify each character type and the number of characters, for mixing multi-character sets to use:

?a repeated to the length of the password (this include upper, lower, numerical and special characters)

to specify costume characters use: -1 followed by many ?’s, each specify a character set (i.e. ?u?l?1?s, ?dabcde)

the 1st example uses alphanumeric and special characters

the 2nd one uses numbers and only letters abcde

you can use known plane text such as FLAG{?a?a?a?a}

more info in:

https://hashcat.net/wiki/doku.php?id=mask_attack

## Password list generation:

```
$crunch n m [list of characters used] -o [output file]
```
n is the minimum length of the password generated

m is the maximum length of the password generated

```
$crunch n m -t [pattern] -o [output file]
```
### -t to use a pattern:

@ for each lower case

, for each upper case

% for each number

^ for each symbol

### Piping crunsh with john:

```
$ jhon crunch [ full command format] [the hash file]
```

# WIFI CRACK:

**user wi.bat on windows to collect wifi SSID and passwords to catpture hadshack: wifite -i wlan1**

## convert handshack file to hashcat format:

```
#aircrack-ng -J file handshack.cap 
```

this would genereate file.hccap 

## convert hccap file to password crackers format

## Jhon The Riper format:
```
$ hccap2jhon file.hccap > file.txt 
```
this would generate txt file to be cracked by jhon the ripper 

## hashcat format: 
```
$ cap2hccapx [hashfile].cap [output].hccapx
```
                              **OR** 
			      
http://hashcat.net/cap2hccapx

# CRYPTOGRAPHY:

www.dcode.fr 

cryptii.com 

quipqiup.com 

planetcalc.com

 **if IC (index of coincidence) is ARROUND .038 the encryption is POLYALPHAPITIC u might use dcode fr to calculate the key length   if IC is ARROUND .067 the encryption is MONOALPHAPTIIC**
 
  **if LETTER FREQUENCY is LIKE ENGLISH the encryption is TRANSPOSITION**
  
  **if LETTER FREQUENCY is not LIKE ENGLISH the encryption is SHIFT CIPHER**


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
## Discrete Logarithm Problem:

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


## XOR online (stream cipher)

https://wiremask.eu/tools/xor-cracker/ 

## RSA:

**X-RSA : https://github.com/X-Vector/X-RSA**

## OPENSSL:

To encrypt a message:
 
 ```
$openssl enc -e –[encryption algorithm] -in “plan text msg” -k “key” -out [encryptedfilename] 
```

To decrypt an encoded message:

```
openssl enc -d –[encryption algorithm] -in [encryptedfilename] -k “key” -out [plane txt filename]
```

# Encoding:

**All encodings**

 https://gchq.github.io/CyberChef/
 
### jsf**k

 http://codertab.com/JsUnFuck http://www.jsfuck.com/ 
 
https://copy.sh/brainfuck/text.html 

### Dancing Men Chiper

https://www.dcode.fr/dancing-men-cipher 

### Mores Code

https://morsify.net/ 

https://morsecode.world/international/translator.html https://morsecode.world/international/decoder/audio-decoderadaptive.html


## HASHES:

https://hashkiller.co.uk/  

https://www.tunnelsup.com/hash-analyzer/


# Reconnaissance:

```
$ nmap [network range] 
 
$ sudo nmap -sS -T4 -A -p- -o [output filename] [IP] 
 
$ autorecon [IP] 
```

### web site search:

```
$ gobuster [dir/file] -u [url] -w [wordlist] 
```

# Privilege escalation and explotitaion:

## GTFOBins

https://gtfobins.github.io/

### LinPEAS/WinPEAS (Linux / WIndows Pribilege escalation advisor):

https://github.com/carlospolop/privilege-escalation-awesomescripts-suite 


## wardriving:

https://wigle.net

# REVERSE:

ELF: objdump Ghidra detect windows files: PEID (PE IDentefier) windows pe: IDA 
Dotnet dotpeek, dnspy


# Web:

pybass ip filter

X-Forwarded-For: [ip address from the allow list (i used  127.0.0.1 as localhost should normaly be allowed)] 

# SQL INJECTION:
```
test ' || (select sql from sqlite_master) || ' 
test '|| (select password from xde43_users where role="admin" ) ||'
```

# SSH:

```
ssh -i [key file path] user@host -p [port number] [command] 
 ```
 
the [command] will be executed just after loging

# VI :
 
before every action don’t forget the "esc" 

i insert

:q quit 
 
:q! quit without saving

:x save and exit
