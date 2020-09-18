#pragma once
#ifdef _MSC_VER
#define __asm__(x)
#define __extension__(x)
#define __attribute__(x)
#define __builtin_va_list int
#define __builtin_va_start(v, l) ((void)(0))
#define __builtin_va_arg(v, l) ((void)(0))
#define __builtin_va_end(v) ((void)(0))
#define __VALIST __gnuc_va_list
#define __extension__
#define __inline__
#define NO_ANSI_KEYWORDS
#define __builtin_constant_p
#define _Bool bool
#undef __cplusplus
#endif