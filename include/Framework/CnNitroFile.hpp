#pragma once

#include "CnFile.hpp"

class CnNitroFile : public CnFile {
public:

	GTPD_FUNC CnNitroFile();

	GTPD_FUNC virtual ~CnNitroFile() override;


	GTPD_FUNC virtual bool open(const char* path, u32 mode) override;

	GTPD_FUNC virtual void close() override;

	GTPD_FUNC virtual u32 seek(s32 offset, SEEK_ORIGIN org = ORG_BEGIN) override;

	GTPD_FUNC virtual u32 read(void* pBuff, u32 size) override;

	GTPD_FUNC virtual u32 getPosition() override;

	GTPD_FUNC virtual u32 getSize() override;

	GTPD_FUNC virtual const char* getPath() override;


	GTPD_FUNC static void InitFilesystem();

GTPD_PRIVATE:

	const char* mPath;
	FSFile mFile;

};
NTR_SIZE_GUARD(CnNitroFile, 0x50);

class CnNitroFileSpan : public CnFile {
public:

	GTPD_FUNC CnNitroFileSpan();

	GTPD_FUNC virtual ~CnNitroFileSpan() override;


	GTPD_FUNC virtual void close() override;

	GTPD_FUNC virtual u32 seek(s32 offset, SEEK_ORIGIN org = ORG_BEGIN) override;

	GTPD_FUNC virtual u32 read(void* pBuff, u32 size) override;

	GTPD_FUNC virtual u32 getPosition() override;

	GTPD_FUNC virtual u32 getSize() override;


	GTPD_FUNC NTR_INLINE void bindFile(CnNitroFile& file) {
		mpFile = &file;
		mpFile->seek(0);
	}

GTPD_PRIVATE:

	u32 mPos;
	u32 mEnd;
	u32 mSize;
	CnNitroFile* mpFile;

};
NTR_SIZE_GUARD(CnNitroFileSpan, 0x14);
