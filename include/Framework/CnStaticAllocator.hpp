#pragma once

#include "CnAllocator.hpp"

class CnStaticAllocator : public CnAllocator {
public:

	GTPD_FUNC CnStaticAllocator();

	GTPD_FUNC virtual ~CnStaticAllocator() override;


	GTPD_FUNC virtual void* alloc(s32 size, const char* comment = "");

	GTPD_FUNC virtual void* allocTemp(s32 size);

	GTPD_FUNC virtual void free(void* p);

	GTPD_FUNC virtual u32 getSize(void* p) const;

	GTPD_FUNC virtual void dump() const override;

	GTPD_FUNC virtual bool isAllocatable(u32 size) const;


	GTPD_FUNC bool init(void* p, u32 size);

GTPD_PRIVATE:

	void* mpBuffer;
	u32 mSize;

};
NTR_SIZE_GUARD(CnStaticAllocator, 0xC);
