#pragma once

#include "Common.hpp"

class CnVMemManager {
public:

	enum MEMORY_ATTRIBUTE : u8 {
		NORMAL,
		FIXED
	};

	struct tChunk {

		NNSFndLink link;
		u32 offset;
		u32 size : 24;
		u32 flag : 8;

	};


	GTPD_FUNC CnVMemManager(u32 chunks, u32 size, u32 align);

	GTPD_FUNC ~CnVMemManager();


	GTPD_FUNC void init();

	GTPD_FUNC void reset();

	GTPD_FUNC u32 alloc(s32 size, MEMORY_ATTRIBUTE flag = NORMAL);

	GTPD_FUNC void free(u32 offset);

	GTPD_FUNC NTR_INLINE u32 allocFixed(s32 size) {
		return alloc(size, FIXED);
	}

	GTPD_FUNC NTR_INLINE void freeFixed(u32 offset) {
		_unlock(offset);
		free(offset);
	}

	GTPD_FUNC NTR_INLINE u32 getSize(u32 offset) const {
		tChunk* chunk = search(offset);
		return chunk ? chunk->size : 0;
	}

GTPD_PRIVATE:

	GTPD_FUNC tChunk* search(u32 offset) const;

	GTPD_FUNC void _unlock(u32 offset);


	u32 mBufferSize;
	u32 mAlign;
	u32 mChunkNums;
	tChunk* mpChunks;
	NNSFndList mList;
	NNSFndList mListUsed;
	NNSFndList mListFree;

};
NTR_SIZE_GUARD(CnVMemManager, 0x34);
