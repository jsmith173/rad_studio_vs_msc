#include "dll_interface.h"


#define IntVar 100

int __stdcall _Get_Int_Var()
{
	int a;
	a = IntVar;
	 
	return a;
}
