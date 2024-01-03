#pragma once

#include "Common.hpp"

class CnObject;

class CnDTI {
public:

	enum ATTR {
		ATTR_CLEAR = 0x0,
		ATTR_ABSTRACT = 0x1,
		ATTR_HIDE = 0x2,
	};


	GTPD_FUNC CnDTI();

	GTPD_FUNC CnDTI(const char* class_name, CnDTI* ps, u32 size, u32 id, ATTR attr);


	GTPD_FUNC virtual CnObject* newInstance() const;


	GTPD_FUNC const char* getName() const;

	GTPD_FUNC u32 getSize() const;

	GTPD_FUNC constexpr u32 getAttr() const {
		return mAttr;
	}

	GTPD_FUNC u32 getID() const;

	GTPD_FUNC CnDTI* getType(const char* name) const;

	GTPD_FUNC CnDTI* getType(u32 id) const;

	GTPD_FUNC bool compare(const CnDTI& parent) const;

	GTPD_FUNC bool compare(const CnDTI& tree, const CnDTI& parent) const;

	GTPD_FUNC u32 makeID(const char* name) const;

	GTPD_FUNC void trace() const;


	GTPD_FUNC static CnDTI* from(const char* name, const CnDTI& root);

	GTPD_FUNC static CnDTI* from(u32 id, const CnDTI& root);

	GTPD_FUNC static void traceAll();

GTPD_PRIVATE:

	static CnDTI mDTI;

	const char* mName;
	CnDTI* mpNext;
	CnDTI* mpChild;
	CnDTI* mpParent;
	u32 mSize : 24;
	u32 mAttr : 8;
	u32 mID;

};
NTR_SIZE_GUARD(CnDTI, 0x1C);

#define CN_OBJECT($type) \
public: \
	GTPD_FUNC virtual CnDTI* getDTI() const override; \
	class MyDTI : public CnDTI { \
	public: \
		GTPD_FUNC NTR_INLINE MyDTI(const char* class_name, CnDTI* ps, u32 size, u32 id, ATTR attr) : \
			CnDTI(class_name, ps, size, id, attr) {} \
		GTPD_FUNC virtual $type* newInstance() const override { return new $type(); } \
	}; \
	static MyDTI DTI

#define CN_OBJECT_DEFINE($type, $parent) \
	GTPD_FUNC CnDTI* $type::getDTI() const { \
		return &DTI; \
	} \
	$type::MyDTI $type::DTI(#$type, &$parent::DTI, sizeof($type), 0, CnDTI::ATTR_CLEAR);


#define CN_OBJECT_ABSTRACT($type) \
public: \
	GTPD_FUNC virtual CnDTI* getDTI() const override; \
	class MyDTI : public CnDTI { \
	public: \
		GTPD_FUNC NTR_INLINE MyDTI(const char* class_name, CnDTI* ps, u32 size, u32 id, ATTR attr) : \
			CnDTI(class_name, ps, size, id, attr) {} \
		GTPD_FUNC virtual $type* newInstance() const override { return nullptr; } \
	}; \
	static MyDTI DTI

#define CN_OBJECT_DEFINE_ABSTRACT($type, $parent) \
	GTPD_FUNC CnDTI* $type::getDTI() const { \
		return &DTI; \
	} \
	$type::MyDTI $type::DTI(#$type, &$parent::DTI, sizeof($type), 0, CnDTI::ATTR_ABSTRACT);


#define CN_OBJECT_ROOT($type) \
public: \
	GTPD_FUNC virtual CnDTI* getDTI() const; \
	class MyDTI : public CnDTI { \
	public: \
		GTPD_FUNC NTR_INLINE MyDTI(const char* class_name, CnDTI* ps) : \
			CnDTI(class_name, ps, sizeof($type), 0, CnDTI::ATTR_ABSTRACT) {} \
		GTPD_FUNC virtual $type* newInstance() const override { return new $type(); } \
	}; \
	static MyDTI DTI

#define CN_OBJECT_DEFINE_ROOT($type) \
	GTPD_FUNC CnDTI* $type::getDTI() const { \
		return &myDTI; \
	} \
	$type::MyDTI $type::DTI(#$type, nullptr);
