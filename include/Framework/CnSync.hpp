#pragma once

#include "Common.hpp"

class CnSync {
public:

	static constexpr u32 SYNC_MAX = 256;
	static constexpr u32 SYNC_BYTES = SYNC_MAX / 8;


	GTPD_FUNC CnSync();


	GTPD_FUNC s32 getHandle();

	GTPD_FUNC void release(s32 handle);

	GTPD_FUNC void setSync(s32 handle);

	GTPD_FUNC bool isActive(s32 handle);

	GTPD_FUNC bool isSync(s32 handle);

	GTPD_FUNC bool checkBit(u8* pBit, u32 idx);

	GTPD_FUNC void setBit(u8* pBit, u32 idx);

	GTPD_FUNC void resetBit(u8* pBit, u32 idx);

GTPD_PRIVATE:

	u8 mHandle[SYNC_BYTES];
	u8 mSync[SYNC_BYTES];
	u32 mHandleIndex;

};
NTR_SIZE_GUARD(CnSync, 0x44);
