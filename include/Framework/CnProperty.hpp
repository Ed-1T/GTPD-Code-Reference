#pragma once

#include "CnObject.hpp"
#include "CnMath.hpp"

class CnProperty {
public:

	template<class T>
	using GetterAny = u32(T::*)(u32 i);

	template<class T>
	using SetterAny = void(T::*)(u32 v, u32 i);

	template<class T>
	using GetterCountAny = u32(T::*)();

	template<class T>
	using SetterCountAny = void(T::*)(u32 c);

	using Getter = GetterAny<CnObject>;
	using Setter = SetterAny<CnObject>;
	using GetterCount = GetterCountAny<CnObject>;
	using SetterCount = SetterCountAny<CnObject>;

	enum TYPE {
		TYPE_UNDEFINED,
		TYPE_CLASS,
		TYPE_CLASSREF,
		TYPE_BOOL,
		TYPE_U8,
		TYPE_U16,
		TYPE_U32,
		TYPE_U64,
		TYPE_S8,
		TYPE_S16,
		TYPE_S32,
		TYPE_S64,
		TYPE_FX16,
		TYPE_FX32,
		TYPE_VECTOR3,
		TYPE_STRING,
		TYPE_ARRAY,
		TYPE_END
	};

	enum ATTR {
		ATTR_NONE = 0x0,
		ATTR_READONLY = 0x1,
		ATTR_NOSERIALIZE = 0x2,
		ATTR_EXPAND = 0x4,
		ATTR_EVENT = 0x8,
		ATTR_NOINSTANCE = 0x10,
		ATTR_ARRAY = 0x20,
		ATTR_DYNAMIC = 0x80,
		ATTR_CONFIG = 0x100,
		ATTR_INIT = 0x200,
		ATTR_STATE = 0x400,
		ATTR_USER = 0x800
	};


	GTPD_FUNC CnProperty();

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, CnObject* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, CnObject** pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, bool* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, char* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, u8* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, u16* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, u32* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, s8* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, s16* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, s32* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, const char* name, CnVector* pAdrs, u16 attr = 0, u32 count = 0);

	GTPD_FUNC CnProperty(CnObject* pThis, TYPE type, const char* name, Getter getter, Setter setter = nullptr, u16 attr = 0, GetterCount getcount = nullptr, SetterCount setcount = nullptr);

	template<class A, class B = A, class C = A, class D = A>
	GTPD_FUNC NTR_INLINE CnProperty(CnObject* pThis, TYPE type, const char* name, GetterAny<A> getter, SetterAny<B> setter = nullptr, u16 attr = 0, GetterCountAny<C> getcount = nullptr, SetterCountAny<D> setcount = nullptr) :
		CnProperty(pThis, type, name, scast<Getter>(getter), scast<Setter>(setter), attr, scast<GetterCount>(getcount), scast<SetterCount>(setcount)) {}


	GTPD_FUNC void deepCopy(CnProperty& prop);

	GTPD_FUNC TYPE getType() const;

	GTPD_FUNC u32 getBytes() const;

	GTPD_FUNC u16 getAttr() const;

	GTPD_FUNC const char* getName() const;

	GTPD_FUNC CnProperty* getNext() const;

	GTPD_FUNC constexpr CnProperty* getPrev() const {
		return mpPrev;
	}

	GTPD_FUNC CnObject* getOwner() const;

	GTPD_FUNC u32 getCount() const;

	GTPD_FUNC void setCount(u32 cnt) const;

	GTPD_FUNC constexpr u32 getIndex() const {
		return mIndex;
	}

	GTPD_FUNC void setIndex(u32 index);

	GTPD_FUNC bool isArray() const;

	GTPD_FUNC constexpr bool isReadonly() const {
		return (mAttr & ATTR_READONLY) != 0;
	}

	GTPD_FUNC bool isDynamic() const;

	GTPD_FUNC bool isSerializable() const;


	GTPD_FUNC void setInteger(s32 value) const;

	GTPD_FUNC void setClass(CnObject* pThis) const;

	GTPD_FUNC void setBool(bool value) const;

	GTPD_FUNC void setU8(u8 value) const;

	GTPD_FUNC void setU16(u16 value) const;

	GTPD_FUNC void setU32(u32 value) const;

	GTPD_FUNC void setU64(u64 value) const;

	GTPD_FUNC void setS8(s8 value) const;

	GTPD_FUNC void setS16(s16 value) const;

	GTPD_FUNC void setS32(s32 value) const;

	GTPD_FUNC void setS64(s64 value) const;

	GTPD_FUNC void setFX16(fx16 value) const;

	GTPD_FUNC void setFX32(fx32 value) const;

	GTPD_FUNC void setVector(const CnVector& value) const;


	GTPD_FUNC CnObject* getClass() const;

	GTPD_FUNC bool getBool() const;

	GTPD_FUNC u8 getU8() const;

	GTPD_FUNC u16 getU16() const;

	GTPD_FUNC u32 getU32() const;

	GTPD_FUNC u64 getU64() const;

	GTPD_FUNC s8 getS8() const;

	GTPD_FUNC s16 getS16() const;

	GTPD_FUNC s32 getS32() const;

	GTPD_FUNC s64 getS64() const;

	GTPD_FUNC fx32 getFX32() const;

	GTPD_FUNC CnVector getVector() const;

GTPD_PRIVATE:

	GTPD_FUNC void writeClass(CnObject* pThis) const;

	GTPD_FUNC void writeBool(bool value) const;

	GTPD_FUNC void writeU8(u8 value) const;

	GTPD_FUNC void writeU16(u16 value) const;

	GTPD_FUNC void writeU32(u32 value) const;

	GTPD_FUNC void writeU64(u64 value) const;

	GTPD_FUNC void writeS8(s8 value) const;

	GTPD_FUNC void writeS16(s16 value) const;

	GTPD_FUNC void writeS32(s32 value) const;

	GTPD_FUNC void writeS64(s64 value) const;


	GTPD_FUNC bool readBool() const;

	GTPD_FUNC u8 readU8() const;

	GTPD_FUNC u16 readU16() const;

	GTPD_FUNC u32 readU32() const;

	GTPD_FUNC u64 readU64() const;

	GTPD_FUNC s8 readS8() const;

	GTPD_FUNC s16 readS16() const;

	GTPD_FUNC s32 readS32() const;

	GTPD_FUNC s64 readS64() const;

	GTPD_FUNC CnVector readVector() const;


	const char* mName;
	u16 mType;
	u16 mAttr;
	CnObject* mpOwner;

	union {
		u32 w[2];
		Getter f;
	} mpAdrs;

	union {
		u32 w[2];
		GetterCount f;
	} mCount;

	union {
		u32 w[2];
		Setter f;
	} mpSetter;

	union {
		u32 w[2];
		SetterCount f;
	} mpSetCount;

	u32 mIndex;
	CnProperty* mpNext;
	CnProperty* mpPrev;

};
NTR_SIZE_GUARD(CnProperty, 0x38);
