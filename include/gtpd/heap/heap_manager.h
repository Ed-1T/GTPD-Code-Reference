#pragma once
#include "nitro_if.h"
#include "allocator_base.h"
#include "expanded_heap.h"
#include "array.h"

namespace MM {

	class SystemStaticBuffer;
	class GeneralPurposeHeap;

	class HeapManager {
	private:

		union {
			AllocatorBase* heaps[12];

			struct {
				SystemStaticBuffer*	systemStaticBuffer;	// "system static buffer"
				GeneralPurposeHeap*	generalPurposeHeap;	// "general purpose heap"
				ExpandedHeap*		miniHeap;			// "for allocating small memory"
				Array*				unitWorkMemory;		// "for UNIT Work Memory"
				Array*				resManagementHeap;	// "for resource management"
				Array*				cellProxyHeap;		// "for Cell Proxy"
				ExpandedHeap*		soundDriverHeap;	// "SOUND DRIVER"
				ExpandedHeap*		soundSeqHeap;		// "SOUND BGM+SE(SEQ)"
				ExpandedHeap*		soundBankHeap;		// "SOUND SE(BANK)"
				AllocatorBase*		heap10;
				AllocatorBase*		heap11;
				AllocatorBase*		heap12;
			};
		};

		u32 heapCount;

	public:

		// 0x201f188 C1
		HeapManager();

		// 0x201f19d
		void initSystemStaticBuffer(void* start, u32 size);

		// 0x201f1d1
		static SystemStaticBuffer* getSystemStaticBuffer();

		// 0x201f215
		void initGeneralPurposeHeap(void* start, u32 size);

		// 0x201f24d
		static GeneralPurposeHeap* getGeneralPurposeHeap();

		// 0x201f289
		void appendAllocator(AllocatorBase* allocator);


		// 0x2007bd9
		static HeapManager* getInstance();

	};

	// 0x20b190c
	extern bool bHeapManagerInitialized;

	// 0x20b1960
	extern HeapManager xHeapManager;

}