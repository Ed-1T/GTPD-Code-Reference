#pragma once

#ifdef NO_NITRO_SDK

typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned long u32;
typedef unsigned long long u64;

typedef signed char s8;
typedef signed short s16;
typedef signed long s32;
typedef signed long long s64;

typedef unsigned int size_t;

typedef int BOOL;

#else

#include "nitro.h"
#include "nnsys.h"

#endif

#define USED	__attribute__((used))
#define NIN		__attribute__((noinline))
#define FIN		__attribute__((always_inline)) inline