
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


/* CnDTI */
	_ZN5CnDTIC2Ev                                                   = 0x0201EDAC + 1; /* CnDTI::CnDTI() */
	_ZN5CnDTIC2EPKcPS_mmNS_4ATTRE                                   = 0x0201EDC0 + 1; /* CnDTI::CnDTI(char const*, CnDTI*, unsigned long, unsigned long, CnDTI::ATTR) */
	_ZNK5CnDTI11newInstanceEv                                       = 0x0200DC24 + 1; /* CnDTI::newInstance() const */
	_ZNK5CnDTI7getNameEv                                            = 0x0201EE68 + 1; /* CnDTI::getName() const */
	_ZNK5CnDTI7getSizeEv                                            = 0x02020BE4 + 1; /* CnDTI::getSize() const */
	_ZNK5CnDTI5getIDEv                                              = 0x0201EE8C + 1; /* CnDTI::getID() const */
	_ZNK5CnDTI7getTypeEPKc                                          = 0x0201EE90 + 1; /* CnDTI::getType(char const*) const */
	_ZNK5CnDTI7getTypeEm                                            = 0x0201EEC0 + 1; /* CnDTI::getType(unsigned long) const */
	_ZNK5CnDTI7compareERKS_                                         = 0x02008314 + 1; /* CnDTI::compare(CnDTI const&) const */
	_ZNK5CnDTI7compareERKS_S1_                                      = 0x02008320 + 1; /* CnDTI::compare(CnDTI const&, CnDTI const&) const */
	_ZNK5CnDTI6makeIDEPKc                                           = 0x0201EEE8 + 1; /* CnDTI::makeID(char const*) const */
	_ZNK5CnDTI5traceEv                                              = 0x02031240 + 1; /* CnDTI::trace() const */
	_ZN5CnDTI4fromEPKcRKS_                                          = 0x0201EE30 + 1; /* CnDTI::from(char const*, CnDTI const&) */
	_ZN5CnDTI4fromEmRKS_                                            = 0x0201EE6C + 1; /* CnDTI::from(unsigned long, CnDTI const&) */
	_ZN5CnDTI8traceAllEv                                            = 0x0203052C + 1; /* CnDTI::traceAll() */

	_ZN5CnDTI4mDTIE													= 0x020bbbb4;     /* CnDTI::mDTI */
	_ZTV5CnDTI														= 0x020A4664 - 8; /* vtable for CnDTI */

/* CnObject */
	_ZN8CnObjectD0Ev                                                = 0x02008AE0 + 1; /* CnObject::~CnObject() */
	_ZN8CnObjectD1Ev                                                = 0x02008AEC + 1; /* CnObject::~CnObject() */
	_ZN8CnObjectD2Ev												= 0x02007AB4 + 1; /* CnObject::~CnObject() */
	_ZN8CnObjectC1Ev                                                = 0x02007AA8 + 1; /* CnObject::CnObject() */
	_ZN8CnObjectC2Ev                                                = 0x0201F530 + 1; /* CnObject::CnObject() */
	_ZN8CnObject16isEnableInstanceEv                                = 0x02008AD0 + 1; /* CnObject::isEnableInstance() */
	_ZN8CnObject14createPropertyER14CnPropertyList                  = 0x02008AD4 + 1; /* CnObject::createProperty(CnPropertyList&) */
	_ZNK8CnObject6getDTIEv                                          = 0x02008348 + 1; /* CnObject::getDTI() const */
	_ZN8CnObject4castERK3DTI                                        = 0x020082F8 + 1; /* CnObject::cast(DTI const&) */
	_ZNK8CnObject8isKindOfERK3DTI                                    = 0x02008828 + 1; /* CnObject::isKindOf(DTI const&) const */

	_ZN8CnObject3DTIE                                               = 0x020BBC18;     /* CnObject::DTI */
	_ZTV8CnObject                                                   = 0x020A47F0 - 8; /* vtable for CnObject */

	/* CnObject::MyDTI */
		_ZN8CnObject5MyDTIC2EPKcP5CnDTI                                 = 0x0201F53C + 1; /* CnObject::MyDTI::MyDTI(char const*, CnDTI*) */
		_ZNK8CnObject5MyDTI11newInstanceEv                              = 0x0201F51C + 1; /* CnObject::MyDTI::newInstance() const */

		_ZTVN8CnObject5MyDTIE                                           = 0x020A47F0 - 8; /* vtable for CnObject::MyDTI */

/* CnProperty */
	_ZN10CnPropertyC1Ev															= 0x02020C64 + 1; /* CnProperty::CnProperty() */
	_ZN10CnPropertyC2Ev															= 0x02020C64 + 1; /* CnProperty::CnProperty() */
	_ZN10CnPropertyC1EP8CnObjectPKcS1_tm                                		= 0x0200B9F4 + 1; /* CnProperty::CnProperty(CnObject*, char const*, CnObject*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcPS1_tm                               		= 0x02008A64 + 1; /* CnProperty::CnProperty(CnObject*, char const*, CnObject**, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcPbtm                                 		= 0x020121E4 + 1; /* CnProperty::CnProperty(CnObject*, char const*, bool*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcPctm                                 		= 0x02012EE0 + 1; /* CnProperty::CnProperty(CnObject*, char const*, char*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcPhtm                                 		= 0x02012EA8 + 1; /* CnProperty::CnProperty(CnObject*, char const*, unsigned char*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcPttm                                 		= 0x02008A30 + 1; /* CnProperty::CnProperty(CnObject*, char const*, unsigned short*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcPmtm                                 		= 0x020089C8 + 1; /* CnProperty::CnProperty(CnObject*, char const*, unsigned long*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcPatm                                 		= 0x0202D650 + 1; /* CnProperty::CnProperty(CnObject*, char const*, signed char*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcPstm                                 		= 0x0200B340 + 1; /* CnProperty::CnProperty(CnObject*, char const*, short*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcPltm                                 		= 0x0200B374 + 1; /* CnProperty::CnProperty(CnObject*, char const*, long*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectPKcP8CnVectortm                         		= 0x02012F14 + 1; /* CnProperty::CnProperty(CnObject*, char const*, CnVector*, unsigned short, unsigned long) */
	_ZN10CnPropertyC1EP8CnObjectNS_4TYPEEPKcMS0_FmmEMS0_FvmmEtMS0_FmvEMS0_FvmE	= 0x0200B9B8 + 1; /* CnProperty::CnProperty(CnObject*, CnProperty::TYPE, char const*, unsigned long (CnObject::*)(unsigned long), void (CnObject::*)(unsigned long, unsigned long), unsigned short, unsigned long (CnObject::*)(), void (CnObject::*)(unsigned long)) */
	_ZN10CnPropertyD1Ev															= 0x020089FC + 1; /* CnProperty::~CnProperty() */
	_ZN10CnPropertyD2Ev															= 0x020089FC + 1; /* CnProperty::~CnProperty() */
	_ZN10CnProperty8deepCopyERS_                                        		= 0x020201B4 + 1; /* CnProperty::deepCopy(CnProperty&) */
	_ZNK10CnProperty7getTypeEv                                          		= 0x02020254 + 1; /* CnProperty::getType() const */
	_ZNK10CnProperty8getBytesEv                                         		= 0x020201F0 + 1; /* CnProperty::getBytes() const */
	_ZNK10CnProperty7getAttrEv                                          		= 0x02020E54 + 1; /* CnProperty::getAttr() const */
	_ZNK10CnProperty7getNameEv                                          		= 0x02020DAC + 1; /* CnProperty::getName() const */
	_ZNK10CnProperty7getNextEv                                          		= 0x02020CF4 + 1; /* CnProperty::getNext() const */
	_ZNK10CnProperty8getOwnerEv                                         		= 0x02021DC8 + 1; /* CnProperty::getOwner() const */
	_ZNK10CnProperty8getCountEv                                         		= 0x02020AD0 + 1; /* CnProperty::getCount() const */
	_ZNK10CnProperty8setCountEm                                         		= 0x02020B04 + 1; /* CnProperty::setCount(unsigned long) const */
	_ZN10CnProperty8setIndexEm                                          		= 0x02020E50 + 1; /* CnProperty::setIndex(unsigned long) */
	_ZNK10CnProperty7isArrayEv                                          		= 0x0202038C + 1; /* CnProperty::isArray() const */
	_ZNK10CnProperty9isDynamicEv                                        		= 0x0202037C + 1; /* CnProperty::isDynamic() const */
	_ZNK10CnProperty14isSerializableEv                                  		= 0x02021B34 + 1; /* CnProperty::isSerializable() const */
	_ZNK10CnProperty10setIntegerEl                                      		= 0x02020258 + 1; /* CnProperty::setInteger(long) const */
	_ZNK10CnProperty8setClassEP8CnObject                                		= 0x02020E58 + 1; /* CnProperty::setClass(CnObject*) const */
	_ZNK10CnProperty7setBoolEb                                          		= 0x02020310 + 1; /* CnProperty::setBool(bool) const */
	_ZNK10CnProperty5setU8Eh                                            		= 0x020204E0 + 1; /* CnProperty::setU8(unsigned char) const */
	_ZNK10CnProperty6setU16Et                                           		= 0x02020408 + 1; /* CnProperty::setU16(unsigned short) const */
	_ZNK10CnProperty6setU32Em                                           		= 0x02020474 + 1; /* CnProperty::setU32(unsigned long) const */
	_ZNK10CnProperty6setU64Ey                                           		= 0x020204E0 + 1; /* CnProperty::setU64(unsigned long long) const */
	_ZNK10CnProperty5setS8Ea                                            		= 0x02020558 + 1; /* CnProperty::setS8(signed char) const */
	_ZNK10CnProperty6setS16Es                                           		= 0x020205C4 + 1; /* CnProperty::setS16(short) const */
	_ZNK10CnProperty6setS32El                                           		= 0x02020630 + 1; /* CnProperty::setS32(long) const */
	_ZNK10CnProperty6setS64Ex                                           		= 0x0202069C + 1; /* CnProperty::setS64(long long) const */
	_ZNK10CnProperty7setFX16Es                                          		= 0x02020714 + 1; /* CnProperty::setFX16(short) const */
	_ZNK10CnProperty7setFX32El                                          		= 0x0202071C + 1; /* CnProperty::setFX32(long) const */
	_ZNK10CnProperty9setVectorERK8CnVector                              		= 0x02020BEC + 1; /* CnProperty::setVector(CnVector const&) const */
	_ZNK10CnProperty8getClassEv                                         		= 0x02020B3C + 1; /* CnProperty::getClass() const */
	_ZNK10CnProperty7getBoolEv                                          		= 0x02020724 + 1; /* CnProperty::getBool() const */
	_ZNK10CnProperty5getU8Ev                                            		= 0x02020788 + 1; /* CnProperty::getU8() const */
	_ZNK10CnProperty6getU16Ev                                           		= 0x020207EC + 1; /* CnProperty::getU16() const */
	_ZNK10CnProperty6getU32Ev                                           		= 0x02020854 + 1; /* CnProperty::getU32() const */
	_ZNK10CnProperty6getU64Ev                                           		= 0x020208BC + 1; /* CnProperty::getU64() const */
	_ZNK10CnProperty5getS8Ev                                            		= 0x02020928 + 1; /* CnProperty::getS8() const */
	_ZNK10CnProperty6getS16Ev                                           		= 0x0202098C + 1; /* CnProperty::getS16() const */
	_ZNK10CnProperty6getS32Ev                                           		= 0x020209F4 + 1; /* CnProperty::getS32() const */
	_ZNK10CnProperty6getS64Ev                                           		= 0x02020A5C + 1; /* CnProperty::getS64() const */
	_ZNK10CnProperty7getFX32Ev                                          		= 0x02020AC8 + 1; /* CnProperty::getFX32() const */
	_ZNK10CnProperty9getVectorEv                                        		= 0x02022240 + 1; /* CnProperty::getVector() const */
	_ZNK10CnProperty10writeClassEP8CnObject                             		= 0x02020E60 + 1; /* CnProperty::writeClass(CnObject*) const */
	_ZNK10CnProperty9writeBoolEb                                        		= 0x02020318 + 1; /* CnProperty::writeBool(bool) const */
	_ZNK10CnProperty7writeU8Eh                                          		= 0x020203A4 + 1; /* CnProperty::writeU8(unsigned char) const */
	_ZNK10CnProperty8writeU16Et                                         		= 0x02020410 + 1; /* CnProperty::writeU16(unsigned short) const */
	_ZNK10CnProperty8writeU32Em                                         		= 0x0202047C + 1; /* CnProperty::writeU32(unsigned long) const */
	_ZNK10CnProperty8writeU64Ey                                         		= 0x020204E8 + 1; /* CnProperty::writeU64(unsigned long long) const */
	_ZNK10CnProperty7writeS8Ea                                          		= 0x02020560 + 1; /* CnProperty::writeS8(signed char) const */
	_ZNK10CnProperty8writeS16Es                                         		= 0x020205CC + 1; /* CnProperty::writeS16(short) const */
	_ZNK10CnProperty8writeS32El                                         		= 0x02020638 + 1; /* CnProperty::writeS32(long) const */
	_ZNK10CnProperty8writeS64Ex                                         		= 0x020206A4 + 1; /* CnProperty::writeS64(long long) const */
	_ZNK10CnProperty8readBoolEv                                         		= 0x0202072C + 1; /* CnProperty::readBool() const */
	_ZNK10CnProperty6readU8Ev                                           		= 0x02020790 + 1; /* CnProperty::readU8() const */
	_ZNK10CnProperty7readU16Ev                                          		= 0x020207F4 + 1; /* CnProperty::readU16() const */
	_ZNK10CnProperty7readU32Ev                                          		= 0x0202085C + 1; /* CnProperty::readU32() const */
	_ZNK10CnProperty7readU64Ev                                          		= 0x020208C4 + 1; /* CnProperty::readU64() const */
	_ZNK10CnProperty6readS8Ev                                           		= 0x02020930 + 1; /* CnProperty::readS8() const */
	_ZNK10CnProperty7readS16Ev                                          		= 0x02020994 + 1; /* CnProperty::readS16() const */
	_ZNK10CnProperty7readS32Ev                                          		= 0x020209FC + 1; /* CnProperty::readS32() const */
	_ZNK10CnProperty7readS64Ev                                          		= 0x02020A64 + 1; /* CnProperty::readS64() const */
	_ZNK10CnProperty10readVectorEv                                      		= 0x02022258 + 1; /* CnProperty::readVector() const */

	_ZN10CnProperty4NullE                                               = 0x020BBCEC; /* CnProperty::Null */

/* CnPropertyList */
	_ZN14CnPropertyListC1Ev                                             = 0x02020C98 + 1; /* CnPropertyList::CnPropertyList() */
	_ZN14CnPropertyListC2Ev                                             = 0x02020C98 + 1; /* CnPropertyList::CnPropertyList() */
	_ZN14CnPropertyListD0Ev												= 0x02020CBC + 1; /* CnPropertyList::~CnPropertyList() */
	_ZN14CnPropertyListD1Ev                                             = 0x02020CA8 + 1; /* CnPropertyList::~CnPropertyList() */
	_ZN14CnPropertyListD2Ev                                             = 0x02020CA8 + 1; /* CnPropertyList::~CnPropertyList() */
	_ZN14CnPropertyList3addERK10CnProperty                              = 0x02008A08 + 1; /* CnPropertyList::add(CnProperty const&) */
	_ZN14CnPropertyList5clearEv                                         = 0x02020D40 + 1; /* CnPropertyList::clear() */
	_ZNK14CnPropertyList11newInstanceEv                                 = 0x02020D10 + 1; /* CnPropertyList::newInstance() const */
	_ZNK14CnPropertyList4findEPKc                                       = 0x02020DB0 + 1; /* CnPropertyList::find(char const*) const */
	_ZNK14CnPropertyList4findEN10CnProperty4TYPEEPKc                    = 0x02020D78 + 1; /* CnPropertyList::find(CnProperty::TYPE, char const*) const */
	_ZNK14CnPropertyList5beginEv                                        = 0x02020CFC + 1; /* CnPropertyList::begin() const */
	_ZNK14CnPropertyList3endEv                                          = 0x02020CF8 + 1; /* CnPropertyList::end() const */
	_ZN14CnPropertyListpLERK10CnProperty                                = 0x02008A00 + 1; /* CnPropertyList::operator+=(CnProperty const&) */

	_ZTV14CnPropertyList                                                = 0x020A490C - 8; /* vtable for CnPropertyList */

	/* CnPropertyList::Iterator */
		_ZN14CnPropertyList8IteratorC1EP10CnProperty                        = 0x02020CD8 + 1; /* CnPropertyList::Iterator::Iterator(CnProperty*) */
		_ZNK14CnPropertyList8IteratorcvP10CnPropertyEv                      = 0x02020CDC + 1; /* CnPropertyList::Iterator::operator CnProperty*() const */
		_ZN14CnPropertyList8IteratorppEi                                    = 0x02020CE0 + 1; /* CnPropertyList::Iterator::operator++(int) */

/* CnAllocator */
	_ZN11CnAllocatorC1Ev                                            = 0x0200C524 + 1; /* CnAllocator::CnAllocator() */
	_ZN11CnAllocatorC2Ev                                            = 0x0200C524 + 1; /* CnAllocator::CnAllocator() */
	_ZN11CnAllocatorD0Ev                                            = 0x0200C960 + 1; /* CnAllocator::~CnAllocator() */
	_ZN11CnAllocatorD1Ev                                            = 0x0200C980 + 1; /* CnAllocator::~CnAllocator() */
	_ZN11CnAllocatorD2Ev                                            = 0x020088D8 + 1; /* CnAllocator::~CnAllocator() */
	_ZN11CnAllocator15changeTemporaryEPv							= 0x0200C97C + 1; /* CnAllocator::changeTemporary(void*) */
	_ZN11CnAllocator5sweepEv                                        = 0x0200C978 + 1; /* CnAllocator::sweep() */
	_ZNK11CnAllocator4dumpEv                                        = 0x0200C974 + 1; /* CnAllocator::dump() const */
	_ZNK11CnAllocator10checkErrorEv                                 = 0x0200C970 + 1; /* CnAllocator::checkError() const */
	_ZNK11CnAllocator8containsEPv                                   = 0x0200C96C + 1; /* CnAllocator::contains(void*) const */
	_ZN11CnAllocator7setNameEPKc                                    = 0x0200C530 + 1; /* CnAllocator::setName(char const*) */

	_ZTV11CnAllocator                                               = 0x020A2CF0 - 8; /* vtable for CnAllocator               */

/* CnHeapAllocator */
	_ZN15CnHeapAllocatorC1Ev                                        = 0x0200C504 + 1; /* CnHeapAllocator::CnHeapAllocator() */
	_ZN15CnHeapAllocatorC2Ev                                        = 0x0201F268 + 1; /* CnHeapAllocator::CnHeapAllocator() */
	_ZN15CnHeapAllocatorD0Ev                                        = 0x0201E104 + 1; /* CnHeapAllocator::~CnHeapAllocator() */
	_ZN15CnHeapAllocatorD1Ev										= 0x0201E0E8 + 1; /* CnHeapAllocator::~CnHeapAllocator() */
	_ZN15CnHeapAllocatorD2Ev										= 0x0201E128 + 1; /* CnHeapAllocator::~CnHeapAllocator() */
	_ZN15CnHeapAllocator5allocElPKc                                 = 0x0201E178 + 1; /* CnHeapAllocator::alloc(long, char const*) */
	_ZN15CnHeapAllocator9allocTempEl                                = 0x0201E1CC + 1; /* CnHeapAllocator::allocTemp(long) */
	_ZN15CnHeapAllocator4freeEPv                                    = 0x0201E1EC + 1; /* CnHeapAllocator::free(void*) */
	_ZN15CnHeapAllocator15changeTemporaryEPv                        = 0x0201E4E8 + 1; /* CnHeapAllocator::changeTemporary(void*) */
	_ZNK15CnHeapAllocator7getSizeEPv                                = 0x0201E4E4 + 1; /* CnHeapAllocator::getSize(void*) const */
	_ZN15CnHeapAllocator5sweepEv                                    = 0x0201E200 + 1; /* CnHeapAllocator::sweep() */
	_ZNK15CnHeapAllocator4dumpEv                                    = 0x0201E248 + 1; /* CnHeapAllocator::dump() const */
	_ZNK15CnHeapAllocator10checkErrorEv                             = 0x0201E24C + 1; /* CnHeapAllocator::checkError() const */
	_ZNK15CnHeapAllocator13isAllocatableEm                          = 0x0201E4C4 + 1; /* CnHeapAllocator::isAllocatable(unsigned long) const */
	_ZNK15CnHeapAllocator8containsEPv                               = 0x0201E2B4 + 1; /* CnHeapAllocator::contains(void*) const */
	_ZN15CnHeapAllocator4initEPvml                                  = 0x0201E144 + 1; /* CnHeapAllocator::init(void*, unsigned long, long) */
	_ZNK15CnHeapAllocator18getAllocatableSizeEv                     = 0x0201E4D8 + 1; /* CnHeapAllocator::getAllocatableSize() const */
	_ZN15CnHeapAllocator16useMiniAllocatorElm                       = 0x0201E250 + 1; /* CnHeapAllocator::useMiniAllocator(long, unsigned long) */
	_ZN15CnHeapAllocator13freeTemporaryEPvP15NNSiFndHeapHeadm       = 0x0201E214 + 1; /* CnHeapAllocator::freeTemporary(void*, NNSiFndHeapHead*, unsigned long) */
	_ZN15CnHeapAllocator7setAttrEPvm                                = 0x0201E230 + 1; /* CnHeapAllocator::setAttr(void*, unsigned long) */

	_ZTV15CnHeapAllocator                                           = 0x020A4534 - 8; /* vtable for CnHeapAllocator */

/* CnBlockAllocator */
	_ZN16CnBlockAllocatorC1Ev                                       = 0x0201E2CC + 1; /* CnBlockAllocator::CnBlockAllocator() */
	_ZN16CnBlockAllocatorC2Ev                                       = 0x0201E2CC + 1; /* CnBlockAllocator::CnBlockAllocator() */
	_ZN16CnBlockAllocatorD0Ev                                       = 0x0201E494 + 1; /* CnBlockAllocator::~CnBlockAllocator() */
	_ZN16CnBlockAllocatorD1Ev                                       = 0x020088B4 + 1; /* CnBlockAllocator::~CnBlockAllocator() */
	_ZN16CnBlockAllocatorD2Ev                                       = 0x020088B4 + 1; /* CnBlockAllocator::~CnBlockAllocator() */
	_ZN16CnBlockAllocator5allocElPKc                                = 0x0201E3DC + 1; /* CnBlockAllocator::alloc(long, char const*) */
	_ZN16CnBlockAllocator9allocTempEl                               = 0x0201E4C0 + 1; /* CnBlockAllocator::allocTemp(long) */
	_ZN16CnBlockAllocator4freeEPv                                   = 0x0201E424 + 1; /* CnBlockAllocator::free(void*) */
	_ZNK16CnBlockAllocator7getSizeEPv                               = 0x0201E4BC + 1; /* CnBlockAllocator::getSize(void*) const */
	_ZNK16CnBlockAllocator4dumpEv                                   = 0x0201E490 + 1; /* CnBlockAllocator::dump() const */
	_ZNK16CnBlockAllocator13isAllocatableEm                         = 0x0201E464 + 1; /* CnBlockAllocator::isAllocatable(unsigned long) const */
	_ZNK16CnBlockAllocator8containsEPv                              = 0x0201E474 + 1; /* CnBlockAllocator::contains(void*) const */
	_ZN16CnBlockAllocator4initEmmPvm                                = 0x0201E2EC + 1; /* CnBlockAllocator::init(unsigned long, unsigned long, void*, unsigned long) */
	_ZN16CnBlockAllocator5clearEv                                   = 0x0201E35C + 1; /* CnBlockAllocator::clear() */
	_ZN16CnBlockAllocator12setFastAllocEv                           = 0x02009848 + 1; /* CnBlockAllocator::setFastAlloc() */

	_ZTV16CnBlockAllocator                                          = 0x020A456C - 8; /* vtable for CnBlockAllocator */

/* CnStaticAllocator */
	_ZN17CnStaticAllocatorC1Ev                                      = 0x0201F1F4 + 1; /* CnStaticAllocator::CnStaticAllocator() */
	_ZN17CnStaticAllocatorC2Ev                                      = 0x0201F1F4 + 1; /* CnStaticAllocator::CnStaticAllocator() */
	_ZN17CnStaticAllocatorD0Ev                                      = 0x0201E4F4 + 1; /* CnStaticAllocator::~CnStaticAllocator() */
	_ZN17CnStaticAllocatorD1Ev                                      = 0x0201E528 + 1; /* CnStaticAllocator::~CnStaticAllocator() */
	_ZN17CnStaticAllocatorD2Ev                                      = 0x0201F208 + 1; /* CnStaticAllocator::~CnStaticAllocator() */
	_ZN17CnStaticAllocator5allocElPKc                               = 0x0201E524 + 1; /* CnStaticAllocator::alloc(long, char const*) */
	_ZN17CnStaticAllocator9allocTempEl                              = 0x0201E520 + 1; /* CnStaticAllocator::allocTemp(long) */
	_ZN17CnStaticAllocator4freeEPv                                  = 0x0201E51C + 1; /* CnStaticAllocator::free(void*) */
	_ZNK17CnStaticAllocator7getSizeEPv                              = 0x0201E518 + 1; /* CnStaticAllocator::getSize(void*) const */
	_ZNK17CnStaticAllocator4dumpEv                                  = 0x0201E0E4 + 1; /* CnStaticAllocator::dump() const */
	_ZNK17CnStaticAllocator13isAllocatableEm                        = 0x0201E508 + 1; /* CnStaticAllocator::isAllocatable(unsigned long) const */
	_ZN17CnStaticAllocator4initEPvm                                 = 0x0201F1D8 + 1; /* CnStaticAllocator::init(void*, unsigned long) */

	_ZTV17CnStaticAllocator                                         = 0x020A45A4 - 8; /* vtable for CnStaticAllocator */

/* CnMemoryManagerImpl */
	_ZN19CnMemoryManagerImplC1Ev                                    = 0x0201F188 + 1; /* CnMemoryManagerImpl::CnMemoryManagerImpl() */
	_ZN19CnMemoryManagerImplC2Ev                                    = 0x0201F188 + 1; /* CnMemoryManagerImpl::CnMemoryManagerImpl() */
	_ZN19CnMemoryManagerImpl17sweepAllTemporaryEv                   = 0x0201F2CC + 1; /* CnMemoryManagerImpl::sweepAllTemporary() */
	_ZN19CnMemoryManagerImpl12addAllocatorEP11CnAllocator           = 0x0201F288 + 1; /* CnMemoryManagerImpl::addAllocator(CnAllocator*) */
	_ZN19CnMemoryManagerImpl12delAllocatorEP11CnAllocator           = 0x0201F29C + 1; /* CnMemoryManagerImpl::delAllocator(CnAllocator*) */
	_ZN19CnMemoryManagerImpl15setSystemMemoryEPvm                   = 0x0201F19C + 1; /* CnMemoryManagerImpl::setSystemMemory(void*, unsigned long) */
	_ZN19CnMemoryManagerImpl14setDefaultHeapEPvm                    = 0x0201F214 + 1; /* CnMemoryManagerImpl::setDefaultHeap(void*, unsigned long) */
	_ZNK19CnMemoryManagerImpl19getDefaultAllocatorEv                = 0x02007B70 + 1; /* CnMemoryManagerImpl::getDefaultAllocator() const */
	_ZN19CnMemoryManagerImpl4dumpEv                                 = 0x0201F2E8 + 1; /* CnMemoryManagerImpl::dump() */

/* CnMemoryManagerImpl::cDefaultHeapAllocator */
	_ZN19CnMemoryManagerImpl21cDefaultHeapAllocatorC1Ev             = 0x0201F254 + 1; /* CnMemoryManagerImpl::cDefaultHeapAllocator::cDefaultHeapAllocator() */
	_ZN19CnMemoryManagerImpl21cDefaultHeapAllocatorC2Ev             = 0x0201F254 + 1; /* CnMemoryManagerImpl::cDefaultHeapAllocator::cDefaultHeapAllocator() */
	_ZN19CnMemoryManagerImpl21cDefaultHeapAllocatorD0Ev             = 0x0201F318 + 1; /* CnMemoryManagerImpl::cDefaultHeapAllocator::~cDefaultHeapAllocator() */
	_ZN19CnMemoryManagerImpl21cDefaultHeapAllocatorD1Ev             = 0x0201F30C + 1; /* CnMemoryManagerImpl::cDefaultHeapAllocator::~cDefaultHeapAllocator() */
	_ZN19CnMemoryManagerImpl21cDefaultHeapAllocatorD2Ev             = 0x0201F30C + 1; /* CnMemoryManagerImpl::cDefaultHeapAllocator::~cDefaultHeapAllocator() */
	_ZN19CnMemoryManagerImpl21cDefaultHeapAllocatornwEj             = 0x0201F24C + 1; /* CnMemoryManagerImpl::cDefaultHeapAllocator::operator new(unsigned int) */

	_ZTVN19CnMemoryManagerImpl21cDefaultHeapAllocatorE              = 0x020A46E8 - 8; /* vtable for CnMemoryManagerImpl::cDefaultHeapAllocator */

/* CnMemoryManagerImpl::cSystemAllocator */
	_ZN19CnMemoryManagerImpl16cSystemAllocatorC1Ev                  = 0x0201F1E0 + 1; /* CnMemoryManagerImpl::cSystemAllocator::cSystemAllocator() */
	_ZN19CnMemoryManagerImpl16cSystemAllocatorC2Ev                  = 0x0201F1E0 + 1; /* CnMemoryManagerImpl::cSystemAllocator::cSystemAllocator() */
	_ZN19CnMemoryManagerImpl16cSystemAllocatorD0Ev                  = 0x0201F2F8 + 1; /* CnMemoryManagerImpl::cSystemAllocator::~cSystemAllocator() */
	_ZN19CnMemoryManagerImpl16cSystemAllocatorD1Ev                  = 0x0201F2EC + 1; /* CnMemoryManagerImpl::cSystemAllocator::~cSystemAllocator() */
	_ZN19CnMemoryManagerImpl16cSystemAllocatorD2Ev                  = 0x0201F2EC + 1; /* CnMemoryManagerImpl::cSystemAllocator::~cSystemAllocator() */
	_ZN19CnMemoryManagerImpl16cSystemAllocatornwEj                  = 0x0201F1D0 + 1; /* CnMemoryManagerImpl::cSystemAllocator::operator new(unsigned int) */

	_ZTVN19CnMemoryManagerImpl16cSystemAllocatorE                   = 0x020A4720 - 8; /* vtable for CnMemoryManagerImpl::cSystemAllocator */

/* CnVMemManager */
	_ZN13CnVMemManagerC1Emmm										= 0x02022514 + 1; /* CnVMemManager::CnVMemManager(unsigned long, unsigned long, unsigned long) */
	_ZN13CnVMemManagerC2Emmm										= 0x02022514 + 1; /* CnVMemManager::CnVMemManager(unsigned long, unsigned long, unsigned long) */
	_ZN13CnVMemManagerD1Ev                                          = 0x0202252C + 1; /* CnVMemManager::~CnVMemManager() */
	_ZN13CnVMemManagerD2Ev                                          = 0x0202252C + 1; /* CnVMemManager::~CnVMemManager() */
	_ZN13CnVMemManager4initEv                                       = 0x02022578 + 1; /* CnVMemManager::init() */
	_ZN13CnVMemManager5resetEv                                      = 0x02022544 + 1; /* CnVMemManager::reset() */
	_ZN13CnVMemManager5allocElNS_16MEMORY_ATTRIBUTEE                = 0x020225E0 + 1; /* CnVMemManager::alloc(long, CnVMemManager::MEMORY_ATTRIBUTE) */
	_ZN13CnVMemManager4freeEm                                       = 0x020226E8 + 1; /* CnVMemManager::free(unsigned long) */
	_ZNK13CnVMemManager6searchEm                                    = 0x020227E0 + 1; /* CnVMemManager::search(unsigned long) const */
	_ZN13CnVMemManager7_unlockEm                                    = 0x0202280C + 1; /* CnVMemManager::_unlock(unsigned long) */

/* CnStream */

/* CnFile */
	_ZN6CnFileC1Ev													= 0x0201E534 + 1; /* CnFile::CnFile() */
	_ZN6CnFileC2Ev                                                  = 0x0201E534 + 1; /* CnFile::CnFile() */
	_ZN6CnFileD0Ev                                                  = 0x0201E658 + 1; /* CnFile::~CnFile() */
	_ZN6CnFileD1Ev                                                  = 0x0201E9C0 + 1; /* CnFile::~CnFile() */
	_ZN6CnFileD2Ev                                                  = 0x02007C10 + 1; /* CnFile::~CnFile() */
	_ZN6CnFile10isReadableEv                                        = 0x0201E9B0 + 1; /* CnFile::isReadable() */
	_ZN6CnFile10isWritableEv                                        = 0x0201E9AC + 1; /* CnFile::isWritable() */
	_ZN6CnFile4openEPKcm                                            = 0x0201E9A8 + 1; /* CnFile::open(char const*, unsigned long) */
	_ZN6CnFile5writeEPvm                                            = 0x0201E9A4 + 1; /* CnFile::write(void*, unsigned long) */
	_ZN6CnFile7getPathEv                                            = 0x0201E99C + 1; /* CnFile::getPath() */
	_ZN6CnFile5flushEv                                              = 0x0201E998 + 1; /* CnFile::flush() */

	_ZTV6CnFile                                                     = 0x020A4618 - 8; /* vtable for CnFile */

/* CnNitroFile */
	_ZN11CnNitroFileC1Ev                                                = 0x0201EF58 + 1; /* CnNitroFile::CnNitroFile() */
	_ZN11CnNitroFileC2Ev                                                = 0x0201EF58 + 1; /* CnNitroFile::CnNitroFile() */
	_ZN11CnNitroFileD0Ev                                                = 0x0201EF90 + 1; /* CnNitroFile::~CnNitroFile() */
	_ZN11CnNitroFileD1Ev                                                = 0x0201EF74 + 1; /* CnNitroFile::~CnNitroFile() */
	_ZN11CnNitroFileD2Ev                                                = 0x0201EF74 + 1; /* CnNitroFile::~CnNitroFile() */
	_ZN11CnNitroFile4openEPKcm                                          = 0x0201EFB4 + 1; /* CnNitroFile::open(char const*, unsigned long) */
	_ZN11CnNitroFile5closeEv                                            = 0x0201EFD8 + 1; /* CnNitroFile::close() */
	_ZN11CnNitroFile4seekElN6CnFile11SEEK_ORIGINE                       = 0x0201EFE4 + 1; /* CnNitroFile::seek(long, CnFile::SEEK_ORIGIN) */
	_ZN11CnNitroFile4readEPvm                                           = 0x0201F014 + 1; /* CnNitroFile::read(void*, unsigned long) */
	_ZN11CnNitroFile11getPositionEv                                     = 0x0201F020 + 1; /* CnNitroFile::getPosition() */
	_ZN11CnNitroFile7getSizeEv                                          = 0x0201F02C + 1; /* CnNitroFile::getSize() */
	_ZN11CnNitroFile7getPathEv                                          = 0x0201F084 + 1; /* CnNitroFile::getPath() */
	_ZN11CnNitroFile14InitFilesystemEv                                  = 0x0201F038 + 1; /* CnNitroFile::InitFilesystem() */

	_ZTV11CnNitroFile                                                   = 0x020A4670 - 8; /* vtable for CnNitroFile */

/* CnNitroFileSpan */
	_ZN15CnNitroFileSpanC1Ev                                            = 0x0201E540 + 1; /* CnNitroFileSpan::CnNitroFileSpan() */
	_ZN15CnNitroFileSpanC2Ev                                            = 0x0201E540 + 1; /* CnNitroFileSpan::CnNitroFileSpan() */
	_ZN15CnNitroFileSpanD0Ev                                            = 0x02007BFC + 1; /* CnNitroFileSpan::~CnNitroFileSpan() */
	_ZN15CnNitroFileSpanD1Ev                                            = 0x0201E9C4 + 1; /* CnNitroFileSpan::~CnNitroFileSpan() */
	_ZN15CnNitroFileSpanD2Ev                                            = 0x0201E9C4 + 1; /* CnNitroFileSpan::~CnNitroFileSpan() */
	_ZN15CnNitroFileSpan5closeEv                                        = 0x0201E9BC + 1; /* CnNitroFileSpan::close() */
	_ZN15CnNitroFileSpan4seekElN6CnFile11SEEK_ORIGINE                   = 0x0201E554 + 1; /* CnNitroFileSpan::seek(long, CnFile::SEEK_ORIGIN) */
	_ZN15CnNitroFileSpan4readEPvm                                       = 0x0201E568 + 1; /* CnNitroFileSpan::read(void*, unsigned long) */
	_ZN15CnNitroFileSpan11getPositionEv                                 = 0x0201E9B4 + 1; /* CnNitroFileSpan::getPosition() */
	_ZN15CnNitroFileSpan7getSizeEv                                      = 0x0201E87C + 1; /* CnNitroFileSpan::getSize() */

	_ZTV15CnNitroFileSpan                                               = 0x020A45DC - 8; /* vtable for CnNitroFileSpan */

/* CnSync */
	_ZN6CnSyncC2Ev													= 0x0200E624 + 1; /* CnSync::CnSync() */
	_ZN6CnSync9getHandleEv                                          = 0x02022400 + 1; /* CnSync::getHandle() */
	_ZN6CnSync7releaseEl                                            = 0x02022454 + 1; /* CnSync::release(long) */
	_ZN6CnSync7setSyncEl                                            = 0x0202247C + 1; /* CnSync::setSync(long) */
	_ZN6CnSync8isActiveEl                                           = 0x02022498 + 1; /* CnSync::isActive(long) */
	_ZN6CnSync6isSyncEl                                             = 0x020224B0 + 1; /* CnSync::isSync(long) */
	_ZN6CnSync8checkBitEPhm                                         = 0x020224CC + 1; /* CnSync::checkBit(unsigned char*, unsigned long) */
	_ZN6CnSync6setBitEPhm                                           = 0x020224E0 + 1; /* CnSync::setBit(unsigned char*, unsigned long) */
	_ZN6CnSync8resetBitEPhm                                         = 0x020224F8 + 1; /* CnSync::resetBit(unsigned char*, unsigned long) */

/* CnStringPool */
	_ZN12CnStringPoolC1Ev											= 0x02022310 + 1; /* CnStringPool::CnStringPool() */
	_ZN12CnStringPoolC2Ev                                           = 0x02022310 + 1; /* CnStringPool::CnStringPool() */
	_ZN12CnStringPoolD0Ev                                           = 0x020223F0 + 1; /* CnStringPool::~CnStringPool() */
	_ZN12CnStringPoolD1Ev                                           = 0x020223FC + 1; /* CnStringPool::~CnStringPool() */
	_ZN12CnStringPoolD2Ev                                           = 0x020223FC + 1; /* CnStringPool::~CnStringPool() */
	_ZNK12CnStringPool4findEPKc                                     = 0x02022350 + 1; /* CnStringPool::find(char const*) const */
	_ZNK12CnStringPool9getStrPosEPKc                                = 0x0202239C + 1; /* CnStringPool::getStrPos(char const*) const */
	_ZNK12CnStringPool7getPoolEv                                    = 0x020223B4 + 1; /* CnStringPool::getPool() const */
	_ZN12CnStringPool7setPoolEPcm                                   = 0x020223B8 + 1; /* CnStringPool::setPool(char*, unsigned long) */
	_ZNK12CnStringPool13measureLengthEv                             = 0x02022324 + 1; /* CnStringPool::measureLength() const */
	_ZTV12CnStringPool                                              = 0x020A491C - 8; /* vtable for CnStringPool */

/* CnMath */
	_ZN6CnMath14getCurrentDataEllllll								= 0x0201F0E4 + 1; /* CnMath::getCurrentData(long, long, long, long, long, long) */
	_ZN6CnMath12getSpeedDataEllll                                   = 0x0201F110 + 1; /* CnMath::getSpeedData(long, long, long, long) */
	_ZN6CnMath10getAccDataEllll                                     = 0x0201F138 + 1; /* CnMath::getAccData(long, long, long, long) */

/* CnVector */

/* CnRandom */
	_ZN8CnRandomC1Ev												= 0x02020DF4 + 1; /* CnRandom::CnRandom() */
	_ZN8CnRandomC2Ev                                                = 0x02020DF4 + 1; /* CnRandom::CnRandom() */
	_ZN8CnRandomC2Em                                                = 0x02020E18 + 1; /* CnRandom::CnRandom(unsigned long) */
	_ZN8CnRandom4initEm                                             = 0x02020E34 + 1; /* CnRandom::init(unsigned long) */
	_ZN8CnRandom9randomU32Ev                                        = 0x01FF80B8; /* CnRandom::randomU32() */


/* Singletons */
	_Z7gMemMgrv														= 0x02007BD8 + 1; /* gMemMgr() */
	_Z8gProcMgrv                                                    = 0x02011264 + 1; /* gProcMgr() */
	_Z5gRandv                                                       = 0x02008EB0 + 1; /* gRand() */
	_Z5gCPACv                                                       = 0x0200883C + 1; /* gCPAC() */


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