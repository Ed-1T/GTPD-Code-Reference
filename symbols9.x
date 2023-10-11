
/********************************************************/
/* mangled names explanation							*/
/* _ZTSxxx     : typename name for xxx					*/
/* _ZTIxxx     : typeinfo for xxx						*/
/* _ZTVxxx     : vtable for xxx							*/
/* _ZxxxD0Ev   : deleting object destructor (virtual)	*/
/* _ZxxxD1Ev   : complete object destructor (virtual)	*/
/* _ZxxxD2Ev   : base object destructor					*/
/* _ZxxxC1Eyyy : complete object constructor			*/
/* _ZxxxC2Eyyy : base object constructor				*/
/********************************************************/

/********************************************/
/*                unsorted					*/
/********************************************/

/* ARM9 Section 0 (CRT0 + MAIN)				*/

	_Znwj   = 0x02031254 + 1; /* operator new(unsigned int) */
	_ZdlPvj = 0x02031270 + 1; /* operator delete(void*, unsigned int) */

/* DTI */
	_ZN3DTIC2Ev														= 0x0201edac + 1; /* DTI::DTI() */
	_ZN3DTIC2EPKcPS_mmm                                             = 0x0201edc0 + 1; /* DTI::DTI(char const*, DTI*, unsigned long, unsigned long, unsigned long) */
	_ZNK3DTI9constructEv                                            = 0x0200dc24 + 1; /* DTI::construct() const */
	_ZNK3DTI7getNameEv                                              = 0x0201ee68 + 1; /* DTI::getName() const */
	_ZNK3DTI6getTagEv                                               = 0x0201ee8c + 1; /* DTI::getTag() const */
	_ZNK3DTI15findChildByNameEPKc                                   = 0x0201ee90 + 1; /* DTI::findChildByName(char const*) const */
	_ZNK3DTI14findChildByTagEm                                      = 0x0201eec0 + 1; /* DTI::findChildByTag(unsigned long) const */
	_ZNK3DTI7makeTagEPKcmm                                          = 0x0201eee8 + 1; /* DTI::makeTag(char const*, unsigned long, unsigned long) const */
	_ZNK3DTI7isChildERKS_                                           = 0x02008314 + 1; /* DTI::isChild(DTI const&) const */
	_ZNK3DTI8hasChildERKS_S1_                                       = 0x02008320 + 1; /* DTI::hasChild(DTI const&, DTI const&) const */
	_ZNK3DTI4dumpEv                                                 = 0x02031240 + 1; /* DTI::dump() const */
	_ZN3DTI10findByNameEPKcRKS_                                     = 0x0201ee30 + 1; /* DTI::findByName(char const*, DTI const&) */
	_ZN3DTI9findByTagEmRKS_                                         = 0x0201ee6c + 1; /* DTI::findByTag(unsigned long, DTI const&) */

	_ZTV3DTI														= 0x020a4664 - 8; /* vtable for DTI */

/* CnObject */
	_ZN8CnObjectD0Ev                                                = 0x02008AE0 + 1; /* CnObject::~CnObject() */
	_ZN8CnObjectD1Ev                                                = 0x02008AEC + 1; /* CnObject::~CnObject() */
	_ZN8CnObjectD2Ev												= 0x02007AB4 + 1; /* CnObject::~CnObject() */
	_ZN8CnObjectC1Ev                                                = 0x02007AA8 + 1; /* CnObject::CnObject() */
	_ZN8CnObjectC2Ev                                                = 0x0201F530 + 1; /* CnObject::CnObject() */
	_ZN8CnObject5virt3Ev                                            = 0x02008AD0 + 1; /* CnObject::virt3() */
	_ZNK8CnObject15registerMembersEPv                               = 0x02008AD4 + 1; /* CnObject::registerMembers(void*) const */
	_ZNK8CnObject6getDTIEv                                          = 0x02008348 + 1; /* CnObject::getDTI() const */
	_ZN8CnObject8safeCastERK3DTI                                    = 0x020082F8 + 1; /* CnObject::safeCast(DTI const&) */
	_ZNK8CnObject7isChildERK3DTI                                    = 0x02008828 + 1; /* CnObject::isChild(DTI const&) const */
	_ZNK8CnObject13findChildUnitERK3DTIm                            = 0x02012F48 + 1; /* CnObject::findChildUnit(DTI const&, unsigned long) const */
	_ZNK8CnObject18countChildrenUnitsERK3DTI                        = 0x02012F94 + 1; /* CnObject::countChildrenUnits(DTI const&) const */

	_ZTV8CnObject                                                   = 0x020A47F0 - 8; /* vtable for CnObject */
	_ZN8CnObject5myDTIE                                             = 0x020BBC18; /* CnObject::myDTI */

/* GenericDTI<CnObject> */
	_ZN10GenericDTII8CnObjectEC2EPKcP3DTI                           = 0x0201F53C + 1; /* GenericDTI<CnObject>::GenericDTI(char const*, DTI*) */
	_ZNK10GenericDTII8CnObjectE9constructEv                         = 0x0201F51C + 1; /* GenericDTI<CnObject>::construct() const */

	_ZTV10GenericDTII8CnObjectE                                     = 0x020A47F0 - 8; /* vtable for GenericDTI<CnObject> */

/* cProcess */
	_ZN8cProcessD0Ev                                                = 0x020231F0 + 1; /* cProcess::~cProcess() */
	_ZN8cProcessD1Ev                                                = 0x020232A0 + 1; /* cProcess::~cProcess() */
	_ZN8cProcessD2Ev                                                = 0x02022D64 + 1; /* cProcess::~cProcess() */
	_ZN8cProcessC1Ev                                                = 0x02022D9C + 1; /* cProcess::cProcess() */
	_ZN8cProcessC2Ev                                                = 0x02022D70 + 1; /* cProcess::cProcess() */
	_ZNK8cProcess15registerMembersEPv								= 0x02022E0C + 1; /* cProcess::registerMembers(void*) const */
	_ZN8cProcess6createEv                                           = 0x0202308C + 1; /* cProcess::create() */
	_ZN8cProcess6updateEv                                           = 0x02023090 + 1; /* cProcess::update() */
	_ZN8cProcess7destroyEv                                          = 0x02023238 + 1; /* cProcess::destroy() */
	_ZNK8cProcess6getDTIEv                                          = 0x02022F24 + 1; /* cProcess::getDTI() const */
	_ZN8cProcess11loadOverlayEv                                     = 0x02023088 + 1; /* cProcess::loadOverlay() */
	_ZNK8cProcess12getParentDTIEv                                   = 0x020231E8 + 1; /* cProcess::getParentDTI() const */
	_ZNK8cProcess7getNameEv                                         = 0x02023288 + 1; /* cProcess::getName() const */
	_ZNK8cProcess14getNextProcessEv                                 = 0x02022DC8 + 1; /* cProcess::getNextProcess() const */
	_ZNK8cProcess14getPrevProcessEv                                 = 0x02022DD8 + 1; /* cProcess::getPrevProcess() const */
	_ZNK8cProcess14getLastProcessEv                                 = 0x02022DF0 + 1; /* cProcess::getLastProcess() const */
	_ZNK8cProcess19getCoProcessManagerEv                            = 0x02022DFC + 1; /* cProcess::getCoProcessManager() const */
	_ZNK8cProcess17getProcessManagerEv                              = 0x02031B20 + 1; /* cProcess::getProcessManager() const */
	_ZN8cProcess14installOverlayEmb                                 = 0x02022EAC + 1; /* cProcess::installOverlay(unsigned long, bool) */
	_ZN8cProcess4exitEv                                             = 0x02022F6C + 1; /* cProcess::exit() */
	_ZNK8cProcess9isCreatedEv                                       = 0x020230D4 + 1; /* cProcess::isCreated() const */
	_ZN8cProcess8setParamEm                                         = 0x020230D8 + 1; /* cProcess::setParam(unsigned long) */

	_ZTV8cProcess													= 0x020A49A0 - 8; /* vtable for cProcess */
	_ZN8cProcess5myDTIE												= 0x020C9DB0; /* cProcess::myDTI */

	/* GenericDTI<cProcess> */
		_ZN10GenericDTII8cProcessEC2EPKcP3DTImmm                        = 0x020232E0 + 1; /* GenericDTI<cProcess>::GenericDTI(char const*, DTI*, unsigned long, unsigned long, unsigned long) */
		_ZNK10GenericDTII8cProcessE9constructEv                         = 0x02022D14 + 1; /* GenericDTI<cProcess>::construct() const */

		_ZTV10GenericDTII8cProcessE                                     = 0x020A4944 - 8; /* vtable for GenericDTI<cProcess> */

/* cProcessManager */
	_ZN15cProcessManagerD0Ev                                            = 0x020232CC + 1; /* cProcessManager::~cProcessManager() */
	_ZN15cProcessManagerD1Ev                                            = 0x02023274 + 1; /* cProcessManager::~cProcessManager() */
	_ZN15cProcessManagerD2Ev                                            = 0x02023274 + 1; /* cProcessManager::~cProcessManager() */
	_ZN15cProcessManagerC1Ev                                            = 0x02022EE0 + 1; /* cProcessManager::cProcessManager() */
	_ZNK15cProcessManager6getDTIEv										= 0x02023280 + 1; /* cProcessManager::getDTI() const */
	_ZNK15cProcessManager14getProcessByIDEl                             = 0x02022F04 + 1; /* cProcessManager::getProcessByID(long) const */
	_ZNK15cProcessManager14getLastProcessEv                             = 0x02022F14 + 1; /* cProcessManager::getLastProcess() const */
	_ZN15cProcessManager13switchProcessERK3DTIm                         = 0x02022F2C + 1; /* cProcessManager::switchProcess(DTI*, unsigned long) */
	_ZN15cProcessManager13switchProcessEPKcm                            = 0x02022F34 + 1; /* cProcessManager::switchProcess(char const*, unsigned long) */
	_ZN15cProcessManager20switchToDummyProcessEv                        = 0x02022F4C + 1; /* cProcessManager::switchToDummyProcess() */
	_ZNK15cProcessManager8hasChildERK3DTI                               = 0x02022F74 + 1; /* cProcessManager::hasChild(DTI*) const */
	_ZNK15cProcessManager8hasChildEPKc                                  = 0x02022FA4 + 1; /* cProcessManager::hasChild(char const*) const */
	_ZNK15cProcessManager9findChildERK3DTI                              = 0x02022FC0 + 1; /* cProcessManager::findChild(DTI*) const */
	_ZN15cProcessManager15updateProcessesEv                             = 0x02022FF4 + 1; /* cProcessManager::updateProcesses() */
	_ZN15cProcessManager16trySwitchProcessEv                            = 0x02023094 + 1; /* cProcessManager::trySwitchProcess() */
	_ZN15cProcessManager21spawnProcessHierarchyERK3DTI                  = 0x020230DC + 1; /* cProcessManager::spawnProcessHierarchy(DTI*) */
	_ZN15cProcessManager14destroyProcessERP8cProcess                    = 0x02023204 + 1; /* cProcessManager::destroyProcess(cProcess*&) */
	_ZN15cProcessManager18linkProcessManagerEPS_                        = 0x0202323C + 1; /* cProcessManager::linkProcessManager(cProcessManager*) */

	_ZTV15cProcessManager                                               = 0x020A4950 - 8; /* vtable for cProcessManager */
	_ZN15cProcessManager5myDTIE                                         = 0x020C9DCC; /* cProcessManager::myDTI */

	/* GenericDTI<cProcessManager> */
		_ZN10GenericDTII15cProcessManagerEC2EPKcP3DTImmm                    = 0x020232FC + 1; /* GenericDTI<cProcessManager>::GenericDTI(char const*, DTI*, unsigned long, unsigned long, unsigned long) */
		_ZNK10GenericDTII15cProcessManagerE9constructEv                     = 0x02022D28 + 1; /* GenericDTI<cProcessManager>::construct() const */

		_ZTV10GenericDTII15cProcessManagerE                                 = 0x020A4938 - 8; /* vtable for GenericDTI<cProcessManager> */

/* cProcessManager::dummyProcess */

	_ZN15cProcessManager12dummyProcessD0Ev                              = 0x020232B8 + 1; /* cProcessManager::dummyProcess::~dummyProcess() */
	_ZN15cProcessManager12dummyProcessD1Ev                              = 0x020232AC + 1; /* cProcessManager::dummyProcess::~dummyProcess() */
	_ZN15cProcessManager12dummyProcessD2Ev                              = 0x020232AC + 1; /* cProcessManager::dummyProcess::~dummyProcess() */
	_ZN15cProcessManager12dummyProcessC1Ev                              = 0x02022D50 + 1; /* cProcessManager::dummyProcess::dummyProcess() */
	_ZNK15cProcessManager12dummyProcess6getDTIEv                        = 0x02023298 + 1; /* cProcessManager::dummyProcess::getDTI() const */

	_ZTVN15cProcessManager12dummyProcessE                               = 0x020A496C - 8; /* vtable for cProcessManager::dummyProcess */
	_ZN15cProcessManager12dummyProcess5myDTIE                           = 0x020C9DE8; /* cProcessManager::dummyProcess::myDTI */

	/* GenericDTI<cProcessManager::dummyProcess> */
		_ZN10GenericDTIIN15cProcessManager12dummyProcessEEC2EPKcP3DTImmm    = 0x02023318 + 1; /* GenericDTI<cProcessManager::dummyProcess>::GenericDTI(char const*, DTI*, unsigned long, unsigned long, unsigned long) */
		_ZNK10GenericDTIIN15cProcessManager12dummyProcessEE9constructEv     = 0x02022D3C + 1; /* GenericDTI<cProcessManager::dummyProcess>::construct() const */

		_ZTV10GenericDTIIN15cProcessManager12dummyProcessEE                 = 0x020A492C - 8; /* vtable for GenericDTI<cProcessManager::dummyProcess> */

/* cDSProcessManager */
	_ZN17cDSProcessManager11getInstanceEv							= 0x02011264 + 1; /* cDSProcessManager::getInstance() */
	_ZN17cDSProcessManager17getProcessManagerEm						= 0x0201123C + 1; /* cDSProcessManager::getProcessManager(unsigned long) */

	_ZZN17cDSProcessManager11getInstanceEvE10myInstance				= 0x020B8AD4; /* cDSProcessManager::getInstance()::myInstance */

/* INPUT */
	keysPressed														= 0x020C9D42;
	keysReleased													= 0x020C9D44;
	keysHeld														= 0x020C9D48;

/* ARM9 Section 1 (ITCM)					*/

/* ARM9 Section 2 (DTCM)					*/

/* Nitro System								*/

/* NITRO SDK (base library)					*/

/* MSL (builtin library)					*/



/* data */



/* bss */