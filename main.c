#include <stdio.h>

extern int module_a();
extern int module_b();

int main()
{
	module_a();
	module_b();
	return 0;
}
