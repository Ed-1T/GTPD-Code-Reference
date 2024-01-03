#pragma once

#include "Common.hpp"

class CnFile {
public:

	enum OPEN_MODE {
		MODE_READ,
		MODE_WRITE,
		MODE_FORCEWRITE
	};

	enum SEEK_ORIGIN {
		ORG_BEGIN,
		ORG_CURRENT,
		ORG_END
	};


	GTPD_FUNC CnFile();

	GTPD_FUNC virtual ~CnFile();


	GTPD_FUNC virtual bool isReadable();

	GTPD_FUNC virtual bool isWritable();

	GTPD_FUNC virtual bool open(const char* path, u32 mode);

	GTPD_FUNC virtual void close() = 0;

	GTPD_FUNC virtual u32 seek(s32 offset, SEEK_ORIGIN org = ORG_BEGIN) = 0;

	GTPD_FUNC virtual u32 read(void* pBuff, u32 size) = 0;

	GTPD_FUNC virtual u32 write(void* pBuff, u32 size);

	GTPD_FUNC virtual u32 getPosition() = 0;

	GTPD_FUNC virtual u32 getSize() = 0;

	GTPD_FUNC virtual const char* getPath();

	GTPD_FUNC virtual void flush();

};
NTR_SIZE_GUARD(CnFile, 0x4);
