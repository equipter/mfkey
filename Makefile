mfkey32v2:
	gcc mfkey32v2.c crypto1/crypto1.c crypto1/crypto01.c crypto1/bucketsort.c -o mfkey32v2 -Iinclude
	gcc mfkey32.c crypto1/crypto1.c crypto1/crypto01.c crypto1/bucketsort.c -o mfkey32 -Iinclude
	gcc mfkey64.c crypto1/crypto1.c crypto1/crypto01.c crypto1/bucketsort.c -o mfkey64 -Iinclude