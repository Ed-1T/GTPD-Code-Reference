#pragma once
#include "nitro_if.h"
#include "allocator_base.h"

namespace MM {

	class Array : public AllocatorBase
	{
	private:

		u32 elemCount;
		u32 elemSize;

		void* begin;
		void* iter;
		void* end;

		bool externalHeap;
		u8 flag;			// 0 = clear object when allocating
		u32 curElement;

		// 0x201e3c1
		static void memClear(void* dst, u32 size);

		// 0x201e3cd
		static void memSet(void* dst, u32 val, u32 size);

		// 0x201e419
		static void memClear8(void* dst, u32 size);

	public:

		// 0x201e2cd C1
		Array();

		// 0x20088b5 D1
		// 0x201e495 D0
		virtual ~Array();

		// 0x201e3dd
		virtual void* allocate(u32 size = 0, const char* name = ""); // allocates an element from the array, size and name are unused

		// 0x201e4c1
		virtual void* allocateTemporary(u32 size); // does nothing

		// 0x201e425
		virtual void deallocate(void* ptr); // removes ptr from the array

		// 0x201e4bd
		virtual u32 getSize() const; // returns elemSize

		// 0x201e491
		virtual void test() const; // does nothing

		// 0x201e465
		virtual bool canAllocate(u32 size) const; // checks if iter is not null, size is unused

		// 0x201e475
		virtual bool contains(void* ptr) const; // checks if ptr is inside the array's heap


		// 0x201e2ed
		void init(u32 elemSize, u32 elemCount, void* extHeapStart, u32 extHeapSize); // initializes the array either by allocating (elemSize * elemCount) bytes from the heap, or by providing an external heap

		// 0x201e35d
		void clear(); // clears the array elements

	};

}