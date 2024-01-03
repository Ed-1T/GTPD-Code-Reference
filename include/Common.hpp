#pragma once

#include "nitro_if.hpp"

#define GTPD_FUNC NTR_LONGCALL NTR_THUMB

#define GTPD_PRIVATE public

#define GTPD_CREATE_SINGLETON($name, $type) \
	GTPD_FUNC $type& g##$name(); \

#define GTPD_DEFINE_SINGLETON($name, $type) \
	GTPD_FUNC $type& g##$name() { \
		static $type myInstance; \
		return myInstance; \
	}

#define GTPD_GET_SINGLETON($name) \
	g##$name()

// Mark these functions as Thumb
GTPD_FUNC void* operator new(unsigned int);

GTPD_FUNC void* operator new[](unsigned int);

GTPD_FUNC void operator delete(void*, unsigned int);

GTPD_FUNC void operator delete[](void*);
