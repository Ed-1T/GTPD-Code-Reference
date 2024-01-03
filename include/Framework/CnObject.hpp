#pragma once

#include "CnDTI.hpp"

class CnPropertyList;

class CnObject {
public:

	class MyDTI;


	GTPD_FUNC CnObject();

	GTPD_FUNC virtual ~CnObject();

	GTPD_FUNC virtual bool isEnableInstance();

	GTPD_FUNC virtual void createProperty(CnPropertyList& prop);

	GTPD_FUNC virtual CnDTI* getDTI() const;


	GTPD_FUNC bool isKindOf(const CnDTI& dti) const;

	GTPD_FUNC CnObject* cast(const CnDTI& target_type);

	GTPD_FUNC u32 segs(u32 ok);

	template<class T>
	NTR_INLINE T* cast() {
		return static_cast<T*>(cast(&T::DTI));
	}


	static MyDTI DTI;

};
NTR_SIZE_GUARD(CnObject, 0x4);

class CnObject::MyDTI : public CnDTI {
public:

	GTPD_FUNC NTR_INLINE MyDTI(const char* class_name, CnDTI* ps) :
		CnDTI(class_name, ps, sizeof(CnObject), 0, CnDTI::ATTR_ABSTRACT) {}

	GTPD_FUNC virtual CnObject* newInstance() const override {
		return new CnObject();
	}

};
NTR_SIZE_GUARD(CnObject::MyDTI, sizeof(CnDTI));
