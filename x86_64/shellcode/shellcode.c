#include<stdio.h>
#include<string.h>

unsigned char code[] = \
"\x48\x31\xc0\x66\xb8\x3c\x00\x66\xbf\x0b\x00\x0f\x05";

main()
{

	printf("Shellcode Length:  %d\n", (int)strlen(code));

	int (*ret)() = (int(*)())code;

	ret();

}


