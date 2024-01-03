#pragma once

#include "CnAllocator.hpp"

class CnHeapAllocator : public CnAllocator {
public:

	GTPD_FUNC CnHeapAllocator();

	GTPD_FUNC virtual ~CnHeapAllocator() override;


	GTPD_FUNC virtual void* alloc(s32 size, const char* comment = "");

	GTPD_FUNC virtual void* allocTemp(s32 size);

	GTPD_FUNC virtual void free(void* p);

	GTPD_FUNC virtual void changeTemporary(void* p) override;

	GTPD_FUNC virtual u32 getSize(void* p) const;

	GTPD_FUNC virtual void sweep() override;

	GTPD_FUNC virtual void dump() const override;

	GTPD_FUNC virtual bool checkError() const override;

	GTPD_FUNC virtual bool isAllocatable(u32 size) const;

	GTPD_FUNC virtual bool contains(void* p) const override;


	GTPD_FUNC void init(void* p, u32 size, s32 align);

	GTPD_FUNC u32 getAllocatableSize() const;

	GTPD_FUNC void useMiniAllocator(s32 size, u32 limit);

GTPD_PRIVATE:

	GTPD_FUNC static void freeTemporary(void* memBlock, NNSFndHeapHandle heap, u32 userParam);

	GTPD_FUNC static void setAttr(void* pMem, u32 attr);


	NNSFndHeapHandle mHeapHandle;
	NNSFndAllocator mHeadAllocator;
	NNSFndAllocator mTailAllocator;
	void* mpBuffer;
	u32 mSize;
	CnHeapAllocator* mpMiniAllocator;
	u32 mMiniLimit;
	bool mbIsMini;

};
NTR_SIZE_GUARD(CnHeapAllocator, 0x3C);
