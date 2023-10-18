#pragma once

#include "Game/Common.hpp"

struct CellFile {

	struct Object {

		u16 attr0;
		u16 attr1;
		u16 attr2;

	};

	struct Cell {

		u16 objectCount;
		Object objects[0];

	};

	u16 cellOffsets[0];

};

// Used instead of NANR files
struct CellTexSlice {
	u32 base;
	u32 size;
};
