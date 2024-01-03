#pragma once

#include "Common.hpp"

class CnStringPool {
public:

	GTPD_FUNC CnStringPool();

	GTPD_FUNC virtual ~CnStringPool();


	GTPD_FUNC char* find(const char* str) const;

	GTPD_FUNC u32 getStrPos(const char* str) const;

	GTPD_FUNC char* getPool() const;

	GTPD_FUNC void setPool(char* pPool, u32 size);

GTPD_PRIVATE:

	GTPD_FUNC u32 measureLength() const;


	char* mpPool;
	u32 mSize;
	u32 mLength;

};
NTR_SIZE_GUARD(CnStringPool, 0x10);
