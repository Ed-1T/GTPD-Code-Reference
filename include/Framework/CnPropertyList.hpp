#pragma once

#include "CnProperty.hpp"

class CnPropertyList {
public:

	class Iterator;

	using TYPE = CnProperty::TYPE;
	using ATTR = CnProperty::ATTR;

	static constexpr u32 ELEMENTPOOL_MAX = 1024;


	GTPD_FUNC CnPropertyList();

	GTPD_FUNC virtual ~CnPropertyList();


	GTPD_FUNC void add(const CnProperty& prop);

	GTPD_FUNC void clear();

	GTPD_FUNC CnProperty* newInstance() const;

	GTPD_FUNC CnProperty* find(const char* name) const;

	GTPD_FUNC CnProperty* find(TYPE type, const char* name) const;

	GTPD_FUNC CnProperty* begin() const;

	GTPD_FUNC CnProperty* end() const;


	GTPD_FUNC void operator+=(const CnProperty& prop);

GTPD_PRIVATE:

	static CnProperty mPool[ELEMENTPOOL_MAX];
	static CnProperty* mpEmpty;
	static u32 mPoolIdx;


	CnProperty* mpProperty;

};
NTR_SIZE_GUARD(CnPropertyList, 0x8);

class CnPropertyList::Iterator {
public:

	GTPD_FUNC Iterator(CnProperty* pe);

	GTPD_FUNC operator CnProperty*() const;

	GTPD_FUNC Iterator operator++(int);

GTPD_PRIVATE:

	CnProperty* mpElement;

};
NTR_SIZE_GUARD(CnPropertyList::Iterator, 0x4);
