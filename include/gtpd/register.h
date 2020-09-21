#pragma once
#include "nitro_if.h"
#include "object.h"

/*
	Internal name: cRegister.

	This class is abstract.
*/
class cRegister : impl_obj {
public:

	// 0x2023349
	cRegister();

	// 0x2023c1d D1
	// 0x2023c29 D0
	virtual ~cRegister();

	// 0x2008ad1
	virtual int virt2();

	// 0x2008ad5
	virtual void virt3();

	// 0x2008349
	decl_constructor_get();

};