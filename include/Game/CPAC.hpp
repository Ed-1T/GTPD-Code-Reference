#pragma once

#include "File.hpp"
#include "Format/CPAC.hpp"

class cAllocatorBase;

class cCPACFile {
public:

	GTPD_FUNC cCPACFile(cFile* file);

	GTPD_FUNC u32 getFileSize() const;

	GTPD_FUNC bool isFileLocalized() const;

	GTPD_FUNC cFileSpan* openFile(u32 packageID, u32 fileID);

	GTPD_FUNC void* readFile(u32 packageID, u32 fileID, void* dst);

	GTPD_FUNC void* readFile(u32 packageID, u32 fileID, bool temporary, cAllocatorBase* heap);

	GTPD_FUNC void setFileCount(u32 packageID, u32 count); // Dummy function

	GTPD_FUNC u32 getFileSize(u32 packageID, u32 fileID);

GTPD_PRIVATE:

	cFile* mpFile;
	u32 mFileSize;
	bool mbFileLocalized;
	CPACSection mSections[8];

};
NTR_SIZE_GUARD(cCPACFile, 0xCC);

class cCPAC {
	GTPD_SINGLETON(cCPAC);
public:

	GTPD_FUNC cCPAC();

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
NTR_SIZE_GUARD(cCPAC, 0xC);

#define CPAC	GTPD_GET_SINGLETON(cCPAC)
#define CPAC2D	GTPD_GET_SINGLETON(cCPAC).getCPAC2D()
#define CPAC3D	GTPD_GET_SINGLETON(cCPAC).getCPAC3D()
