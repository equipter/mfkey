# Mfkey Mifare Classic attacks

| ![GitHub followers](https://img.shields.io/github/followers/equipter?label=Equipter%20&logo=GitHub&style=flat-square) | ![Twitter Follow](https://img.shields.io/twitter/follow/equip0x80?color=b9d1ff&label=Equip0x80&logo=Twitter&style=flat-square) | ![Subreddit subscribers](https://img.shields.io/reddit/subreddit-subscribers/rfid?logo=reddit&logoColor=ffffff&style=flat-square) | equip paypal: equipter@outlook.com |
| :---: | :---: | :---: | :---: |

Mfkey32/v2/64 extracts keys from nonces collected during the authentication process. These nonces can be collected by emulating the credential to allow the reader to begin despensing the necessary information to begin extraction.
## Acknowledgements

 - [rfidresearchgroup Base Code](https://github.com/rfidresearchgroup/proxmark3)
 - [Bettse for assisting in development](https://gitlab.com/bettse)
 
 ## Requirements 
GCC for compiling C (deb)
- `sudo apt install build-essential`

## Compilation 
1. Before compiling make sure your gcc is present and  up to date 
- `sudo apt install build-essential`
- `sudo apt-get update` 
2. Download code
- `git clone https://github.com/equipter/mfkey`
3. Navigate into repo directory 
- `cd mfkey/`
4. Compile using `make` or self compile your specific chosen mfkey version. 
* `make` to make all 3 

or
* mfkey32v2: `gcc mfkey32v2.c crypto1/crypto1.c crypto1/crypto01.c crypto1/bucketsort.c -o mfkey32v2 -Iinclude`
* mfkey32: `gcc mfkey32.c crypto1/crypto1.c crypto1/crypto01.c crypto1/bucketsort.c -o mfkey32 -Iinclude`
* mfkey64: `gcc mfkey64.c crypto1/crypto1.c crypto1/crypto01.c crypto1/bucketsort.c -o mfkey64 -Iinclude`

now that youve compiled youre ready to use!

## Mfkey32v2 usage
Mfkey32v2 works by two sets of 32 bit keystream authentication and is different to mfkey32 in the way it uses an alternate calculation method to generate the key 

command syntax for mfkey32v2 is `./mfkey32v2 <uid> <nt> <nr_0> <ar_0> <nt1> <nr_1> <ar_1>`
  
example: UID `939be0d5`
  
syntax: `./mfkey32v2 939be0d5 4e70d691 b3a576be 02c1559b c6efb126 d24dd966 03fc7386`

## Mfkey32 usage
Mfkey32 works by two sets of 32 bits of keystream authentication.

command syntax for mfkey32 is `./mfkey32 <uid> <nt> <nr_0> <ar_0> <nr_1> <ar_1>`

## Mfkey64 usage
Mfkey64 works on one complete 64 bit keystream authentication. 

command syntax for mfkey64 is `./mfkey64 <uid> <nt> <{nr}> <{ar}> <{at}> [enc...]`

## Support

For support, Message Equip on discord Equip#1515
