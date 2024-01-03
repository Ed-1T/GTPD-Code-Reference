#pragma once

#include "CnAllocator.hpp"

class CnBlockAllocator : public CnAllocator {
public:

	GTPD_FUNC CnBlockAllocator();

	GTPD_FUNC virtual ~CnBlockAllocator() override;


	GTPD_FUNC virtual void* alloc(s32 size, const char* comment = "");

	GTPD_FUNC virtual void* allocTemp(s32 size);

	GTPD_FUNC virtual void free(void* p);

	GTPD_FUNC virtual u32 getSize(void* p) const;

	GTPD_FUNC virtual void dump() const override;

	GTPD_FUNC virtual bool isAllocatable(u32 size) const;

	GTPD_FUNC virtual bool contains(void* p) const override;


	GTPD_FUNC bool init(u32 size, u32 num, void* pBuff, u32 buffSize);

	GTPD_FUNC void clear();

	GTPD_FUNC void setFastAlloc();

GTPD_PRIVATE:

	u32 mNum;
	u32 mSize;
	void* mpBuffer;
	void* mpHead;
	void* mpTail;
	bool mbUseExternalMemory;
	bool mbFastAlloc;
	u32 mCnt;

};
NTR_SIZE_GUARD(CnBlockAllocator, 0x20);
