#pragma once

#include "CnAllocator.hpp"
#include "CnStaticAllocator.hpp"
#include "CnHeapAllocator.hpp"

class CnMemoryManagerImpl {
public:

	class cDefaultHeapAllocator;
	class cSystemAllocator;

	static constexpr u32 ALLOCATOR_MAX = 12;


	GTPD_FUNC CnMemoryManagerImpl();


	GTPD_FUNC void sweepAllTemporary();

	GTPD_FUNC void addAllocator(CnAllocator* pAllocator);

	GTPD_FUNC void delAllocator(CnAllocator* pAllocator);

	GTPD_FUNC void setSystemMemory(void* p, u32 size);

	GTPD_FUNC void setDefaultHeap(void* p, u32 size);

	GTPD_FUNC CnAllocator* getDefaultAllocator() const;

	GTPD_FUNC void dump();

GTPD_PRIVATE:

	CnAllocator* mpAllocator[ALLOCATOR_MAX];
	u32 mAllocatorNums;

};
NTR_SIZE_GUARD(CnMemoryManagerImpl, 0x34);

GTPD_CREATE_SINGLETON(MemMgr, CnMemoryManagerImpl);

#define MemMgr GTPD_GET_SINGLETON(MemMgr)

class CnMemoryManagerImpl::cDefaultHeapAllocator : public CnHeapAllocator {
public:

	GTPD_FUNC cDefaultHeapAllocator();

	GTPD_FUNC virtual ~cDefaultHeapAllocator() override;


	GTPD_FUNC void* operator new(SizeT size);

};
NTR_SIZE_GUARD(CnMemoryManagerImpl::cDefaultHeapAllocator, sizeof(CnHeapAllocator));

class CnMemoryManagerImpl::cSystemAllocator : public CnStaticAllocator {
public:

	GTPD_FUNC cSystemAllocator();

	GTPD_FUNC virtual ~cSystemAllocator() override;


	GTPD_FUNC void* operator new(SizeT size);

};
NTR_SIZE_GUARD(CnMemoryManagerImpl::cSystemAllocator, sizeof(CnStaticAllocator));
