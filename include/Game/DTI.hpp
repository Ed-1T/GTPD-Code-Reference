#pragma once

#include "Common.hpp"

class DTI {
public:

	GTPD_FUNC DTI();

	GTPD_FUNC DTI(const char* name, DTI* parent, u32 size, u32 tag, u32 flag);


	GTPD_FUNC virtual void* construct() const;


	GTPD_FUNC const char* getName() const;

	GTPD_FUNC u32 getTag() const;

	GTPD_FUNC DTI* findChildByName(const char* name) const;

	GTPD_FUNC DTI* findChildByTag(u32 tag) const;

	GTPD_FUNC u32 makeTag(const char* name, u32 min, u32 max) const;

	GTPD_FUNC bool isChild(const DTI& parent) const;

	GTPD_FUNC bool hasChild(const DTI& tree, const DTI& parent) const;

	GTPD_FUNC void dump() const;


	GTPD_FUNC static DTI* findByName(const char* name, const DTI& root);

	GTPD_FUNC static DTI* findByTag(u32 tag, const DTI& root);

GTPD_PRIVATE:

	const char* mName;
	DTI* mpNext;
	DTI* mpChild;
	DTI* mpParent;
	u32 mFlag;
	u32 mTag;

};
NTR_SIZE_GUARD(DTI, 0x1C);

template<class T>
class GenericDTI : public DTI {
public:

	NTR_NOINLINE GenericDTI(const char* name, DTI* parent) :
		DTI(name, parent, sizeof(T), 0, 0) {}

	NTR_NOINLINE GenericDTI(const char* name, DTI* parent, u32 size, u32 tag, u32 flag) :
		DTI(name, parent, size, tag, flag) {}

/* GCC_PUSH
GCC_IGNORE("-Wall") */
	virtual void* construct() const override {
		return new T();
	}
/* GCC_POP */

};

#define GTPD_OBJECT($type) \
public: \
	virtual DTI* getDTI() const; \
	static GenericDTI<$type> myDTI

#define GTPD_OBJECT_DEFINE($type, $parent) \
	GTPD_FUNC DTI* $type::getDTI() const { \
		return &myDTI; \
	} \
	GenericDTI<$type> $type::myDTI(#$type, &$parent::myDTI, sizeof($type), 0, 0);

#define GTPD_OBJECT_DEFINE_ROOT($type) \
	GTPD_FUNC DTI* $type::getDTI() const { \
		return &myDTI; \
	} \
	GenericDTI<$type> $type::myDTI(#$type, nullptr);
