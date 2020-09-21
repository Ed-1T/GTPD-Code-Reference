#pragma once
#include "nitro_if.h"
#include "allocator_base.h"

namespace MM {

	class ExpandedHeap : public AllocatorBase
	{
	private:

		NNSFndHeapHandle heapHandle;
		NNSFndAllocator headAllocator;
		NNSFndAllocator tailAllocator;

		void* heapStart;
		u32 heapSize;

		ExpandedHeap* miniHeap;
		u32 miniHeapParam;
		bool isMiniHeap;

		// 0x201e1c5
		static int abs(int v);

		// 0x201e215
		static void tempDeallocator(void* memBlock, NNSFndHeapHandle heap, u32 userParam);

		// 0x201e231
		static void setMBlockGroupID(void* memBlock, u16 id);

	public:

		// 0x201f269 C2
		// 0x200c505 C1
		ExpandedHeap();

		// 0x201e129 D2
		// 0x201e105 D1
		// 0x201e105 D0
		virtual ~ExpandedHeap();

		// 0x201e179
		virtual void* allocate(u32 size, const char* name = ""); // allocates a memory block

		// 0x201e1cd
		virtual void* allocateTemporary(u32 size); // allocates a temporary memory block

		// 0x201e1ed
		virtual void deallocate(void* ptr); // deallocates ptr

		// 0x201e4e9
		virtual void setTemporary(void* ptr); // sets ptr's memory block tag to be temporary

		// 0x201e4e5
		virtual u32 getSize() const; // returns the expanded heap's total size

		// 0x201e201
		virtual void deallocateTemporary(); // deallocates all memory blocks that have a temporary tag

		// 0x201e249
		virtual void test() const; // does nothing

		// 0x201e24d
		virtual bool intact() const; // returns true

		// 0x201e4c5
		virtual bool canAllocate(u32 size) const; // checks if the heap can fit the number of bytes specified by size

		// 0x201e2b5
		virtual bool contains(void* ptr) const; // checks if ptr is inside the expanded heap


		// 0x201e145
		void init(void* start, u32 size); // initializes the expanded heap

		// 0x201e251
		void createMiniHeap(void* start, u32 size); // creates a sub heap

		// 0x201e4d9
		u32 getAllocatableSize() const; // returns the expanded heap's allocatable size


		inline ExpandedHeap* getMiniHeap() {
			return miniHeap;
		}

	};

}