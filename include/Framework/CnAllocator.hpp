#pragma once

#include "Common.hpp"

class CnAllocator {
public:

	enum MEM_ATTR {
		ATTR_PERM = 0x0,
		ATTR_TEMP = 0x1
	};


	GTPD_FUNC CnAllocator();

	GTPD_FUNC virtual ~CnAllocator();


	GTPD_FUNC virtual void* alloc(s32 size, const char* comment = "") = 0;

	GTPD_FUNC virtual void* allocTemp(s32 size) = 0;

	GTPD_FUNC virtual void free(void* p) = 0;

	GTPD_FUNC virtual void changeTemporary(void* p);

	GTPD_FUNC virtual u32 getSize(void* p) const = 0;

	GTPD_FUNC virtual void sweep();

	GTPD_FUNC virtual void dump() const;

	GTPD_FUNC virtual bool checkError() const;

	GTPD_FUNC virtual bool isAllocatable(u32 size) const = 0;

	GTPD_FUNC virtual bool contains(void* p) const;


	GTPD_FUNC void setName(const char* name);

};
NTR_SIZE_GUARD(CnAllocator, 0x4);
