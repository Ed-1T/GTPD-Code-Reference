#pragma once

namespace MM {

	/*
		Used to implement some common memory
		allocation methods to a class.

		This class is abstract.
	*/
	class AllocatorBase {
	public:

		// 0x200c525 C2
		AllocatorBase();

		// 0x200c981 D1
		// 0x200c961 D0
		virtual ~AllocatorBase();

		virtual void* allocate(u32 size, const char* name = "") = 0;

		virtual void* allocateTemporary(u32 size) = 0;

		virtual void deallocate(void* ptr) = 0;

		// 0x200c97d
		virtual void setTemporary(void* ptr); // does nothing

		virtual u32 getSize() const = 0;

		// 0x200c979
		virtual void deallocateTemporary(); // does nothing

		// 0x200c975
		virtual void test() const; // does nothing

		// 0x200c971
		virtual bool intact() const; // returns true

		virtual bool canAllocate(u32 size) const = 0;

		// 0x200c96d
		virtual bool contains(void* ptr) const; // returns true

	};

}