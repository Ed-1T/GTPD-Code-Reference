#pragma once

#include "Game/Common.hpp"

enum CPACKeyType {
	PKEY,
	BKEY
};

struct CPACFileKey {
	u32 flags;
	u32 size;
};

struct CPACSection {
	u32 keyDataOffset;
	u32 datDataOffset;
	u32 keyType;
	CPACFileKey* keys;
	u32 keyCount;
	u32 sectionSize;
};
