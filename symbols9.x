
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
	_Znaj   = 0x02031288 + 1; /* operator new[](unsigned int) */
	_ZdlPvj = 0x02031270 + 1; /* operator delete(void*, unsigned int) */
	_ZdaPv  = 0x020312a4 + 1; /* operator delete[](void*) */

/* cStream */
	_ZN7cStreamD0Ev								= 0x0201E658 + 1; /* cStream::~cStream() */
	_ZN7cStreamD1Ev								= 0x0201E9C0 + 1; /* cStream::~cStream() */
	_ZN7cStreamD2Ev								= 0x02007C10 + 1; /* cStream::~cStream() */
	_ZN7cStreamC1Ev								= 0x0201E534 + 1; /* cStream::cStream() */
	_ZN7cStreamC2Ev								= 0x0201E534 + 1; /* cStream::cStream() */
	_ZN7cStream5virt3Ev                         = 0x0201E9B0 + 1; /* cStream::virt3() */
	_ZN7cStream5virt4Ev                         = 0x0201E9AC + 1; /* cStream::virt4() */
	_ZN7cStream4openEPKch                       = 0x0201E9A8 + 1; /* cStream::open(char const*, unsigned char) */
	_ZN7cStream5virt9Ev                         = 0x0201E9A4 + 1; /* cStream::virt9() */
	_ZN7cStream7getPathEv                       = 0x0201E99C + 1; /* cStream::getPath() */
	_ZN7cStream6virt13Ev                        = 0x0201E998 + 1; /* cStream::virt13() */

	_ZTV7cStream                                = 0x020A4618 - 8; /* vtable for cStream */

/* cFile */
	_ZN5cFileD0Ev                               = 0x0201EF90 + 1; /* cFile::~cFile() */
	_ZN5cFileD1Ev                               = 0x0201EF74 + 1; /* cFile::~cFile() */
	_ZN5cFileD2Ev                               = 0x0201EF74 + 1; /* cFile::~cFile() */
	_ZN5cFileC1Ev                               = 0x0201EF58 + 1; /* cFile::cFile() */
	_ZN5cFileC2Ev                               = 0x0201EF58 + 1; /* cFile::cFile() */
	_ZN5cFile4openEPKch                         = 0x0201EFB4 + 1; /* cFile::open(char const*, unsigned char) */
	_ZN5cFile5closeEv                           = 0x0201EFD8 + 1; /* cFile::close() */
	_ZN5cFile4seekElN7cStream8SeekModeE         = 0x0201EFE4 + 1; /* cFile::seek(long, cStream::SeekMode) */
	_ZN5cFile4readEPvm                          = 0x0201F014 + 1; /* cFile::read(void*, unsigned long) */
	_ZN5cFile4tellEv                            = 0x0201F020 + 1; /* cFile::tell() */
	_ZN5cFile7getSizeEv                         = 0x0201F02C + 1; /* cFile::getSize() */
	_ZN5cFile7getPathEv                         = 0x0201F084 + 1; /* cFile::getPath() */

	_ZTV5cFile                                  = 0x020A4670 - 8; /* vtable for cFile */

/* cFileSpan */
	_ZN9cFileSpanD0Ev                           = 0x02007BFC + 1; /* cFileSpan::~cFileSpan() */
	_ZN9cFileSpanD1Ev                           = 0x0201E9C4 + 1; /* cFileSpan::~cFileSpan() */
	_ZN9cFileSpanD2Ev                           = 0x0201E9C4 + 1; /* cFileSpan::~cFileSpan() */
	_ZN9cFileSpanC1Ev                           = 0x0201E540 + 1; /* cFileSpan::cFileSpan() */
	_ZN9cFileSpanC2Ev                           = 0x0201E540 + 1; /* cFileSpan::cFileSpan() */
	_ZN9cFileSpan5closeEv                       = 0x0201E9BC + 1; /* cFileSpan::close() */
	_ZN9cFileSpan4seekElN7cStream8SeekModeE     = 0x0201E554 + 1; /* cFileSpan::seek(long, cStream::SeekMode) */
	_ZN9cFileSpan4readEPvm                      = 0x0201E568 + 1; /* cFileSpan::read(void*, unsigned long) */
	_ZN9cFileSpan4tellEv                        = 0x0201E9B4 + 1; /* cFileSpan::tell() */
	_ZN9cFileSpan7getSizeEv                     = 0x0201E87C + 1; /* cFileSpan::getSize() */

	_ZTV9cFileSpan                              = 0x020A45DC - 8; /* vtable for cFileSpan */

/* cCPACFile */
	_ZN9cCPACFileC2EP5cFile							= 0x0201E580 + 1; /* cCPACFile::cCPACFile(cFile*) */
	_ZNK9cCPACFile11getFileSizeEv                   = 0x0200CB5C + 1; /* cCPACFile::getFileSize() const */
	_ZNK9cCPACFile15isFileLocalizedEv               = 0x0200CF3C + 1; /* cCPACFile::isFileLocalized() const */
	_ZN9cCPACFile8openFileEmm                       = 0x0201E664 + 1; /* cCPACFile::openFile(unsigned long, unsigned long) */
	_ZN9cCPACFile8readFileEmmPv                     = 0x0201E7F8 + 1; /* cCPACFile::readFile(unsigned long, unsigned long, void*) */
	_ZN9cCPACFile8readFileEmmbP14cAllocatorBase     = 0x0201E888 + 1; /* cCPACFile::readFile(unsigned long, unsigned long, bool, cAllocatorBase*) */
	_ZN9cCPACFile12setFileCountEmm                  = 0x0201E978 + 1; /* cCPACFile::setFileCount(unsigned long, unsigned long) */
	_ZN9cCPACFile11getFileSizeEmm                   = 0x0201E97C + 1; /* cCPACFile::getFileSize(unsigned long, unsigned long) */

/* cCPAC */
	_ZN5cCPACC2Ev                                   = 0x0202EF88 + 1; /* cCPAC::cCPAC() */
	_ZN5cCPAC11getInstanceEv                        = 0x0200883C + 1; /* cCPAC::getInstance() */
	_ZNK5cCPAC9getCPAC2DEv                          = 0x02008824 + 1; /* cCPAC::getCPAC2D() const */
	_ZNK5cCPAC9getCPAC3DEv                          = 0x0201A4E8 + 1; /* cCPAC::getCPAC3D() const */
	_ZN5cCPAC12loadPackagesEb                       = 0x0202EF90 + 1; /* cCPAC::loadPackages(bool) */

	_ZZN5cCPAC11getInstanceEvE10myInstance          = 0x020B1920; /* cCPAC::getInstance()::myInstance */

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

/* cCellProxy */
	_ZN10cCellProxy14releaseTextureEv = 0x0200B060 + 1;
	_ZN10cCellProxy14releasePaletteEv = 0x0200B074 + 1;

/* cCellPrim */
	_ZN9cCellPrimD0Ev													= 0x0200B1C0 + 1; /* cCellPrim::~cCellPrim() */
	_ZN9cCellPrimD1Ev													= 0x0200B180 + 1; /* cCellPrim::~cCellPrim() */
	_ZN9cCellPrimD2Ev													= 0x0200B180 + 1; /* cCellPrim::~cCellPrim() */
	_ZN9cCellPrimC1Ev													= 0x0200B154 + 1; /* cCellPrim::cCellPrim() */
	_ZN9cCellPrimC2Ev													= 0x0200B154 + 1; /* cCellPrim::cCellPrim() */

	_ZTV9cCellPrim													= 0x020A2C9C - 8; /* vtable for cCellPrim */

/* cCellAnim */
	_ZN9cCellAnimD0Ev                                                   = 0x0200B4B8 + 1; /* cCellAnim::~cCellAnim() */
	_ZN9cCellAnimD1Ev													= 0x0200B494 + 1; /* cCellAnim::~cCellAnim() */
	_ZN9cCellAnimD2Ev													= 0x0200B494 + 1; /* cCellAnim::~cCellAnim() */
	_ZN9cCellAnimC1Ev													= 0x0200B460 + 1; /* cCellAnim::cCellAnim() */
	_ZN9cCellAnimC2Ev													= 0x0200B460 + 1; /* cCellAnim::cCellAnim() */
	_ZNK9cCellAnim15registerMembersEPv                                  = 0x0200B864 + 1; /* cCellAnim::registerMembers(void*) const */
	_ZNK9cCellAnim6getDTIEv                                             = 0x0200C948 + 1; /* cCellAnim::getDTI() const */
	_ZN9cCellAnim5resetEv												= 0x0200B4E0 + 1; /* cCellAnim::reset() */
	_ZN9cCellAnim16releaseAnimationEv                                   = 0x0200B504 + 1; /* cCellAnim::releaseAnimation() */
	_ZN9cCellAnim9configureEhmm                                         = 0x0200B518 + 1; /* cCellAnim::configure(unsigned char, unsigned long, unsigned long) */
	_ZN9cCellAnim4loadEmNS_9LoadFlagsE                                  = 0x0200B598 + 1; /* cCellAnim::load(unsigned long, cCellAnim::LoadFlags) */
	_ZN9cCellAnim6updateEv                                              = 0x0200B7C0 + 1; /* cCellAnim::update() */
	_ZN9cCellAnim6renderEv                                              = 0x0200B808 + 1; /* cCellAnim::render() */
	_ZNK9cCellAnim8getSeqNoEv                                           = 0x0200BA28 + 1; /* cCellAnim::getSeqNo() const */
	_ZNK9cCellAnim12getPaletteIDEv                                      = 0x0200BA2C + 1; /* cCellAnim::getPaletteID() const */
	_ZNK9cCellAnim14getPaletteSizeEv                                    = 0x0200BA44 + 1; /* cCellAnim::getPaletteSize() const */
	_ZN9cCellAnim13setEngineTypeEh                                      = 0x0200BA6C + 1; /* cCellAnim::setEngineType(unsigned char) */
	_ZNK9cCellAnim13getEngineTypeEv                                     = 0x0200BA78 + 1; /* cCellAnim::getEngineType() const */
	_ZN9cCellAnim11setPositionERK5sVec3                                 = 0x0200BA7C + 1; /* cCellAnim::setPosition(sVec3 const&) */
	_ZN9cCellAnim20reserveDirectTextureEm                               = 0x0200BA98 + 1; /* cCellAnim::reserveDirectTexture(unsigned long) */
	_ZN9cCellAnim20releaseDirectTextureEl                               = 0x0200BAB8 + 1; /* cCellAnim::releaseDirectTexture(long) */
	_ZN9cCellAnim19uploadDirectTextureEPKvmm                            = 0x0200BAD8 + 1; /* cCellAnim::uploadDirectTexture(void const*, unsigned long, unsigned long) */
	_ZNK9cCellAnim14getSeqFileInfoEm                                    = 0x0200BB1C + 1; /* cCellAnim::getSeqFileInfo(unsigned long) const */
	_ZN9cCellAnim11syncPaletteEv                                        = 0x0200BB64 + 1; /* cCellAnim::syncPalette() */
	_ZN9cCellAnim11loadPaletteEm                                        = 0x0200BB8C + 1; /* cCellAnim::loadPalette(unsigned long) */
	_ZN9cCellAnim14releasePaletteEv                                     = 0x0200BBBC + 1; /* cCellAnim::releasePalette() */
	_ZN9cCellAnim15releaseGraphicsEv                                    = 0x0200BBD0 + 1; /* cCellAnim::releaseGraphics() */
	_ZNK9cCellAnim14getPaletteDataEv                                    = 0x0200BBE8 + 1; /* cCellAnim::getPaletteData() const */
	_ZN9cCellAnim16applyColorFilterERK12cColorFilter                    = 0x0200BBF8 + 1; /* cCellAnim::applyColorFilter(cColorFilter const&) */
	_ZNK9cCellAnim13hasPalette256Ev                                     = 0x0200BC10 + 1; /* cCellAnim::hasPalette256() const */
	_ZN9cCellAnim15applyBrightnessEl                                    = 0x0200BC2C + 1; /* cCellAnim::applyBrightness(long) */
	_ZN9cCellAnim18setPaletteDeferredEv                                 = 0x0200BC44 + 1; /* cCellAnim::setPaletteDeferred() */
	_ZN9cCellAnim14setColorFilterEPK12cColorFilter                      = 0x0200BC64 + 1; /* cCellAnim::setColorFilter(cColorFilter const*) */
	_ZNK9cCellAnim11getPrimFlipEv                                       = 0x02008364 + 1; /* cCellAnim::getPrimFlip() const */
	_ZN9cCellAnim12setPrimGroupEh                                       = 0x020280A8 + 1; /* cCellAnim::setPrimGroup(unsigned char) */
	_ZN9cCellAnim22setPrimDisplayPriorityEh                             = 0x0203FDD8 + 1; /* cCellAnim::setPrimDisplayPriority(unsigned char) */
	_ZN9cCellAnim13setPrimShadowEbh                                     = 0x020593DC + 1; /* cCellAnim::setPrimShadow(bool, unsigned char) */
	_ZN9cCellAnim12setSequencerEP14cAnimSequencer                       = 0x0205963C + 1; /* cCellAnim::setSequencer(cAnimSequencer*) */

	_ZN9cCellAnim16seqFileInfoTableE                                    = 0x0208C064; /* cCellAnim::seqFileInfoTable */
	_ZN9cCellAnim12seqFileIDMapE                                        = 0x02088910; /* cCellAnim::seqFileIDMap */
	_ZN9cCellAnim21seqFileIDMapLocalizedE                               = 0x02086F84; /* cCellAnim::seqFileIDMapLocalized */
	_ZN9cCellAnim5myDTIE                                                = 0x020B8480; /* cCellAnim::myDTI */
	_ZTV9cCellAnim                                                      = 0x020A2CB8 - 8; /* vtable for cCellAnim */

	/* GenericDTI<cCellAnim> */
		_ZN10GenericDTII9cCellAnimEC2EPKcP3DTImmm                           = 0x0200C9BC + 1; /* GenericDTI<cCellAnim>::GenericDTI(char const*, DTI*, unsigned long, unsigned long, unsigned long) */
		_ZNK10GenericDTII9cCellAnimE9constructEv                            = 0x0200AE18 + 1; /* GenericDTI<cCellAnim>::construct() const */

		_ZTV10GenericDTII9cCellAnimE                                        = 0x020A2C90 - 8; /* vtable for GenericDTI<cCellAnim> */

/* INPUT */
	keysPressed														= 0x020C9D42;
	keysReleased													= 0x020C9D44;
	keysHeld														= 0x020C9D48;

/* ARM9 Section 1 (ITCM)					*/

/* ARM9 Section 2 (DTCM)					*/

/* Nitro System								*/

/* NITRO SDK (base library)					*/

DC_StoreRange = 0x02074860;
MI_UncompressLZ8 = 0x02073174;

/* MSL (builtin library)					*/



/* data */



/* bss */