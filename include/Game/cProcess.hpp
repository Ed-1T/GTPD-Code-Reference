#pragma once

#include "Framework/CnObject.hpp"

class cProcessManager;

class cProcess : public CnObject {
	CN_OBJECT(cProcess);
public:

	GTPD_FUNC cProcess();

	GTPD_FUNC virtual ~cProcess() override;

	GTPD_FUNC virtual void createProperty(CnPropertyList& s) override;


	GTPD_FUNC virtual bool load();

	GTPD_FUNC virtual void init();

	GTPD_FUNC virtual void move();

	GTPD_FUNC virtual void final();

	GTPD_FUNC virtual CnDTI* getParentType() const;

	GTPD_FUNC virtual const char* getName() const;


	GTPD_FUNC cProcess* getChild() const;

	GTPD_FUNC cProcess* getParent() const;

	GTPD_FUNC cProcess* getAnother() const;

	GTPD_FUNC cProcessManager* getAnotherMgr() const;

	GTPD_FUNC cProcessManager* getMgr() const;

	GTPD_FUNC bool load_overlay(u32 id, bool temporary);

	GTPD_FUNC void terminate();

	GTPD_FUNC bool isInit() const;

	GTPD_FUNC void setParam(u32 param);

GTPD_PRIVATE:

	union {
		struct {
			u8 mRno0;
			u8 mRno1;
			u8 mRno2;
			u8 mRno3;
		};
		u32 mRno;
	};

	u32 mParam;
	bool mInit;
	bool mBusy;
	bool mTerminate;
	bool mbAutoUnload;
	bool mbUseOverlay;
	bool mbLocked;
	u32 mStackPt;
	u32 mOverlayId;
	cProcessManager* mpProcMgr;

};
NTR_SIZE_GUARD(cProcess, 0x20);

class cProcessManager : public CnObject {
	CN_OBJECT(cProcessManager);
public:

	class dummyProcess;

	static constexpr u32 MAX_STACK = 8;


	GTPD_FUNC cProcessManager();

	GTPD_FUNC virtual ~cProcessManager() override;


	GTPD_FUNC cProcess* getProcess(s32 stackPt) const;

	GTPD_FUNC cProcess* getAnotherProcess() const;

	GTPD_FUNC void setAnotherMgr(cProcessManager* procMgr);

	GTPD_FUNC void jump(const CnDTI& dti, u32 param = 0);

	GTPD_FUNC void jump(const char* name, u32 param = 0);

	GTPD_FUNC void reset();

	GTPD_FUNC bool isExist(const CnDTI& dti) const;

	GTPD_FUNC bool isExist(const char* name) const;

	GTPD_FUNC cProcess* findProcess(const CnDTI& dti) const;


	GTPD_FUNC void move();

	GTPD_FUNC void jumpProcess();

	GTPD_FUNC void setupProcess(const CnDTI& dti);

	GTPD_FUNC void finalize(cProcess*& p) const;

GTPD_PRIVATE:

	cProcess* mpProcessStack[MAX_STACK];
	u32 mStackPt;
	CnDTI* mpJumpProcess;
	u32 mJumpParam;
	cProcessManager* mpAnotherMgr;

};
NTR_SIZE_GUARD(cProcessManager, 0x34);

class cProcessManager::dummyProcess : public cProcess {
	CN_OBJECT(cProcessManager::dummyProcess);
public:

	GTPD_FUNC dummyProcess();

	GTPD_FUNC virtual ~dummyProcess() override;

};
NTR_SIZE_GUARD(cProcessManager::dummyProcess, sizeof(cProcess));

class cProcessManagerImpl {
public:

	GTPD_FUNC cProcessManager& getInstance(u32 id);

GTPD_PRIVATE:

	cProcessManager mProcMgr[2];

};
NTR_SIZE_GUARD(cProcessManagerImpl, 0x68);

GTPD_CREATE_SINGLETON(ProcMgr, cProcessManagerImpl);

#define ProcMgr		GTPD_GET_SINGLETON(ProcMgr)
#define ProcMgrMain	GTPD_GET_SINGLETON(ProcMgr).getProcessManager(0)
#define ProcMgrSub	GTPD_GET_SINGLETON(ProcMgr).getProcessManager(1)
