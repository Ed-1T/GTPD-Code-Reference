#pragma once

#include "Game/Common.hpp"
#include "ProcessManager.hpp"

class cDSProcessManager {
	GTPD_SINGLETON(cDSProcessManager);
public:

	GTPD_FUNC cProcessManager& getProcessManager(u32 slot);

GTPD_PRIVATE:

	cProcessManager mManagers[2];

};
NTR_SIZE_GUARD(cDSProcessManager, 0x68);

#define DSProcessManager GTPD_GET_SINGLETON(cDSProcessManager)
