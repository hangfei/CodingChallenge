
@Author: Hangfei Lin
@PennKey: hangfei


Instructions for running:
1. Make: run make on command
2. Generate payload: run ./attack >> af
3. Attack: cat af -| ./badbuf

Note:
1. Do remember to turn off following protections:
	- GCC Stack-Smashing Protector (SSP), Executable space protection (NX)
		gcc -fno-stack-protector -z execstack badbuf.c -o badbuf 
	- Address Space Layout Randomization (ASLR)
		- this should be turned off in speclab already


Steps to achieve attacking:
1. Get shellcode
	- http://crypto.stanford.edu/~blynn/rop/
		- xxd -s0x4bf -l32 -p a.out shellcode (remember to replace the address which is specific your machine)
2. Write the shellcode in the attack C code. And specifically remember to remove new line and carriage return. (Null shouldn't be returned.)
3. Generate the payload
	- Write payload to name.
		- Write shellcode to first part of name. And add NULL at end.
		- Write 
	- Write payload to password. The return address would be pointed to the password.
		- Write shellcode to first part of pw.
