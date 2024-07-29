#ifndef dll_headerH
#define dll_headerH

#ifdef __BUILDING_THE_DLL
 #define __EXPORT_TYPE extern "C"  __declspec(dllexport)
#endif

#ifdef __BUILDING_THE_DLL_TEST_APP
 #define __EXPORT_TYPE extern "C" __declspec(dllimport)
#endif

#ifdef __BUILDING_THE_MAIN_APP
 #define __EXPORT_TYPE
#endif

#endif

