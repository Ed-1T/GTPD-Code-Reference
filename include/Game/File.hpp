#pragma once

#include "Stream.hpp"

class cFile : public cStream {
public:

	GTPD_FUNC cFile();

	GTPD_FUNC virtual ~cFile() override;

	GTPD_FUNC virtual bool open(const char* path) override;

	GTPD_FUNC virtual void close() override;

	GTPD_FUNC virtual u32 seek(s32 offset, SeekMode mode = SeekMode::Set) override;

	GTPD_FUNC virtual u32 read(void* dst, u32 size) override;

	GTPD_FUNC virtual u32 tell() override;

	GTPD_FUNC virtual u32 getSize() override;

	GTPD_FUNC virtual const char* getPath() override;

GTPD_PRIVATE:

	const char* mPath;
	FSFile mFile;

};
NTR_SIZE_GUARD(cFile, 0x50);

class cFileSpan : public cStream {
public:

	GTPD_FUNC cFileSpan();

	GTPD_FUNC virtual ~cFileSpan() override;

	GTPD_FUNC virtual void close() override;

	GTPD_FUNC virtual u32 seek(s32 offset, SeekMode mode = SeekMode::Set) override;

	GTPD_FUNC virtual u32 read(void* dst, u32 size) override;

	GTPD_FUNC virtual u32 tell() override;

	GTPD_FUNC virtual u32 getSize() override;


	NTR_INLINE void bindFile(cFile& file) {
		mpFile = &file;
		mpFile->seek(0);
	}

GTPD_PRIVATE:

	u32 mPos;
	u32 mEnd;
	u32 mSize;
	cFile* mpFile;

};
NTR_SIZE_GUARD(cFileSpan, 0x14);
