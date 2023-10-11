#pragma once

#include "Game/CnObject.hpp"

class cProcessManager;

class cProcess : public CnObject {
	GTPD_OBJECT(cProcess);
public:

	GTPD_FUNC virtual ~cProcess() override;

	GTPD_FUNC virtual void registerMembers(void* unk) const override;


	GTPD_FUNC virtual bool loadOverlay();

	GTPD_FUNC virtual void create();

	GTPD_FUNC virtual void update();

	GTPD_FUNC virtual void destroy();

	GTPD_FUNC virtual DTI* getParentDTI() const;

	GTPD_FUNC virtual const char* getName() const;


	GTPD_FUNC cProcess* getNextProcess() const;

	GTPD_FUNC cProcess* getPrevProcess() const;

	GTPD_FUNC cProcess* getLastProcess() const;

	GTPD_FUNC cProcessManager* getCoProcessManager() const;

	GTPD_FUNC cProcessManager* getProcessManager() const;

	GTPD_FUNC bool installOverlay(u32 id, bool temporary);

	GTPD_FUNC void exit();

	GTPD_FUNC bool isCreated() const;

	GTPD_FUNC void setParam(u32 param);

GTPD_PRIVATE:

	union {
		u8 bytes[4];
		u32 word;
	} mRno;

	u32 mParam; // TODO: This is actually a specific type?
	bool mInit;
	bool mBusy;
	bool mExit;
	bool mbOverlayTemporary;
	bool mbOverlayLoaded;
	u8 unkD;
	u8 unkE;
	u8 unkF;
	u32 mStackPt;					// Index in spawned hierarchy process
	u32 mOverlayID;
	cProcessManager* mpProcMgr;

};
NTR_SIZE_GUARD(cProcess, 0x20);
