#pragma once

#include "Common.hpp"

class CnRandom {
public:

	GTPD_FUNC CnRandom();

	GTPD_FUNC CnRandom(u32 seed);


	GTPD_FUNC void init(u32 seed);

	u32 randomU32();


	GTPD_FUNC NTR_INLINE void operator()(u32 seed) {
		init(seed);
	}

	GTPD_FUNC NTR_INLINE u32 operator()() {
		return randomU32();
	}

GTPD_PRIVATE:

	u32 x;
	u32 y;
	u32 z;
	u32 w;

};
NTR_SIZE_GUARD(CnRandom, 0x10);

GTPD_CREATE_SINGLETON(Rand, CnRandom);

#define Rand GTPD_GET_SINGLETON(Rand)
