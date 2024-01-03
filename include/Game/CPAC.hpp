#pragma once

#include "Framework/CnAllocator.hpp"
#include "Framework/CnNitroFile.hpp"
#include "Format/CPAC.hpp"

class cCPACFile {
public:

	GTPD_FUNC cCPACFile(CnNitroFile* pFile);

	GTPD_FUNC u32 getFileSize() const;

	GTPD_FUNC bool isFileLocalized() const;

	GTPD_FUNC CnNitroFileSpan* openFile(u32 packId, u16 keyId);

	GTPD_FUNC void* readFile(u32 packId, u16 keyId, void* pDest);

	GTPD_FUNC void* readFile(u32 packId, u16 keyId, bool temporary, CnAllocator* allocator);

	GTPD_FUNC void setFileCount(u32 packId, u32 count); // Dummy function

	GTPD_FUNC u32 getFileSize(u32 packId, u16 keyId);

GTPD_PRIVATE:

	CnNitroFile* mpFile;
	u32 mFileSize;
	bool mbFileLocalized;
	CPACSection mSections[8];

};
NTR_SIZE_GUARD(cCPACFile, 0xCC);

class cCPACImpl {
public:

	GTPD_FUNC cCPACImpl();

	GTPD_FUNC cCPACFile* getCPAC2D() const;

	GTPD_FUNC cCPACFile* getCPAC3D() const;

	/*
		manualFiles must always be false, otherwise the cCPACFile
		instances will be bound to uninitialized cFile pointers
	*/
	GTPD_FUNC void loadPackages(bool manualFiles = false);

GTPD_PRIVATE:

	cCPACFile* mpCPAC2D;
	cCPACFile* mpCPAC3D;
	u8 unk8;

};
NTR_SIZE_GUARD(cCPACImpl, 0xC);

GTPD_CREATE_SINGLETON(CPAC, cCPACImpl);

#define CPAC	GTPD_GET_SINGLETON(CPAC)
#define CPAC2D	GTPD_GET_SINGLETON(CPAC).getCPAC2D()
#define CPAC3D	GTPD_GET_SINGLETON(CPAC).getCPAC3D()
