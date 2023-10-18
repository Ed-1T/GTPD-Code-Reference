#pragma once

#include "Common.hpp"

class cStream {
public:

	enum SeekMode {
		Set,
		Cur,
		End
	};


	GTPD_FUNC cStream();

	GTPD_FUNC virtual ~cStream();

	GTPD_FUNC virtual bool virt3(); // Returns true

	GTPD_FUNC virtual bool virt4(); // Returns false

	GTPD_FUNC virtual bool open(const char* path);

	GTPD_FUNC virtual void close() = 0;

	GTPD_FUNC virtual u32 seek(s32 offset, SeekMode mode = SeekMode::Set) = 0;

	GTPD_FUNC virtual u32 read(void* dst, u32 size) = 0;

	GTPD_FUNC virtual bool virt9(); // Returns false

	GTPD_FUNC virtual u32 tell() = 0;

	GTPD_FUNC virtual u32 getSize() = 0;

	GTPD_FUNC virtual const char* getPath();

	GTPD_FUNC virtual void virt13();

};
NTR_SIZE_GUARD(cStream, 0x4);
