#pragma once

#include "nitro_if.hpp"

#define GTPD_FUNC NTR_LONGCALL NTR_THUMB

#define GTPD_PRIVATE public

#define GTPD_SINGLETON($type) \
public: \
	GTPD_FUNC static $type& getInstance();

#define GTPD_SINGLETON_DEFINE($type) \
	GTPD_FUNC $type& $type::getInstance() { \
		static $type myInstance; \
		return myInstance; \
	}

#define GTPD_GET_SINGLETON($type) \
	$type::getInstance()

// Mark these functions as Thumb
GTPD_FUNC void* operator new(unsigned int);

GTPD_FUNC void operator delete(void*, unsigned int);
