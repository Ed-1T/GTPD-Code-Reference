#pragma once

#include "DTI.hpp"

class cUnit;

class CnObject {
public:

	GTPD_FUNC CnObject();

	GTPD_FUNC virtual ~CnObject();

	GTPD_FUNC virtual u32 virt3();

	GTPD_FUNC virtual void registerMembers(void* unk) const;

	GTPD_OBJECT(CnObject);


	GTPD_FUNC CnObject* safeCast(const DTI& dti);

	template<class T>
	NTR_INLINE T* safeCast() {
		return scast<T*>(safeCast(&T::myDTI));
	}

	GTPD_FUNC bool isChild(const DTI& parent) const;

	GTPD_FUNC cUnit* findChildUnit(const DTI& parent, u32 matchIndex = 0);

	GTPD_FUNC u32 countChildrenUnits(const DTI& parent);

};
NTR_SIZE_GUARD(CnObject, 0x4);
