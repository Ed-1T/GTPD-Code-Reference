#pragma once

#include "Game/CnObject.hpp"
#include "Process.hpp"

class cProcessManager : public CnObject {
	GTPD_OBJECT(cProcessManager);
public:

	class dummyProcess;

	constexpr static s32 LastPID = -1;


	GTPD_FUNC virtual ~cProcessManager() override;


	GTPD_FUNC cProcess* getProcessByID(s32 pid) const;

	GTPD_FUNC cProcess* getLastProcess() const;

	GTPD_FUNC void switchProcess(const DTI& dti, u32 param = 0);

	GTPD_FUNC void switchProcess(const char* name, u32 param = 0);

	GTPD_FUNC void switchToDummyProcess();

	GTPD_FUNC bool hasChild(const DTI& dti) const;

	GTPD_FUNC bool hasChild(const char* name) const;

	GTPD_FUNC cProcess* findChild(const DTI& dti) const;

	GTPD_FUNC void updateProcesses();

	GTPD_FUNC void trySwitchProcess();

	GTPD_FUNC void spawnProcessHierarchy(const DTI& dti);

	GTPD_FUNC void destroyProcess(cProcess*& processLink);

	GTPD_FUNC void linkProcessManager(cProcessManager* procMgr);

GTPD_PRIVATE:

	cProcess* mProcessList[8];
	u32 mProcessCount;
	DTI* mNewProcDTI;
	u32 mNewProcParam;
	cProcessManager* mpLinkedMgr;

};
NTR_SIZE_GUARD(cProcessManager, 0x34);

class cProcessManager::dummyProcess : public cProcess {
	GTPD_OBJECT(cProcessManager::dummyProcess);
public:

	GTPD_FUNC virtual ~dummyProcess() override;

};
NTR_SIZE_GUARD(cProcessManager::dummyProcess, 0x20);
