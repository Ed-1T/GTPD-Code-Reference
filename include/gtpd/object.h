#pragma once
#include "nitro_if.h"
#include "constructor.h"

/*
	Internal name: CnObject.

	This class is abstract.
*/
class CnObject {
public:

	// 0x2007aa9 C2
	// 0x201f531 C1
	CnObject();

	// 0x2007ab5 D2
	// 0x2008aed D1
	// 0x2008ae1 D0
	virtual ~CnObject();

	// 0x2008ad1
	virtual int virt2();	// does nothing (returns 0)

	// 0x2008ad5
	virtual void virt3();	// does nothing

	// 0x2008349
	decl_constructor_get();

	virtual void init() = 0;

};

// Macro for inheriting a CnObject class
#define impl_obj public CnObject

decl_constructor_obj(CnObject)