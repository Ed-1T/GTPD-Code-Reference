#pragma once
#include "nitro_if.h"

/*
	C++ constructor/destructor info

	<ctor-dtor-name> 
			::= C1	# complete object constructor
			::= C2	# base object constructor
			::= C3	# complete object allocating constructor
			::= D0	# deleting destructor
			::= D1	# complete object destructor
			::= D2	# base object destructor
*/

class ConstructorBase {
	const char* name;

	ConstructorBase* next;
	ConstructorBase* child;
	ConstructorBase* parent;

	u32 sizeFlag;
	u32 tag;				// name hash maybe

	// 0x201ee91
	ConstructorBase* findChildByName(const char* name);

	// 0x201eec1
	ConstructorBase* findChildByTag(u32 tag);

	// 0x201eee9
	u32 calcTag(const char* name, u32 min, u32 max); // calculates the hash?

public:

	// 0x201edc1
	ConstructorBase(const char* sName, const ConstructorBase* pParent, int nSize, u32 nTag, u32 nFlag);

	// 0x201ee31
	static ConstructorBase* findByName(const char* name, const ConstructorBase* tree);

	// 0x201ee69
	const char* getName() const;

	// 0x201ee6d
	static ConstructorBase* findByTag(u32 tag, const ConstructorBase* tree);

	// 0x201ee8d
	u32 getTag() const;


	virtual void* allocate() const; // returns nullptr
};

template<class _Ty>
class Constructor : public ConstructorBase
{
public:
	Constructor(const char* sName, const ConstructorBase* pParent, int nSize, u32 nTag, u32 nFlag) :
		ConstructorBase(sName, pParent, nSize, nTag, nFlag) {}

	virtual _Ty* allocate() {
		return new _Ty();
	}
};

// Declares an allocator object for class t (use in header files)
#define decl_constructor_obj(t) \
extern Constructor<##t##> t##Constructor;

// Defines an allocator object for class t, with parent p, size s, tag x and flag f (use in source files)
#define def_constructor_obj_ex(t, p, s, x, f) \
Constructor<##t##> t##Constructor = Constructor<##t##>(#t, p, s, x, f);

// Defines an allocator object for class t, with parent p (use in source files)
#define def_constructor_obj(t, p) \
Constructor<##t##> t##Constructor = Constructor<##t##>(#t, p, sizeof(##t##), 0, 0);

// Declares an allocator getter for class t (use in header files, inside a class declaration)
#define decl_constructor_get() \
virtual ConstructorBase* getConstructor();

// Defins an allocator getter for class t (use in source files)
#define def_constructor_get(t) \
ConstructorBase* t##::getConstructor() { \
	return &t##Constructor; \
}

//----------------------------------------------------------------------------------------------