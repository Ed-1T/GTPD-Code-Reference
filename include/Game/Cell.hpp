#pragma once

#include "Framework/CnObject.hpp"
#include "Framework/CnMath.hpp"

class cColorFilter;
class cAnimSequencer;

class cCellProxy : public CnObject {
	CN_OBJECT(cCellProxy);
public:

	GTPD_FUNC cCellProxy();

	GTPD_FUNC virtual ~cCellProxy() override;

	GTPD_FUNC void releaseTexture();

	GTPD_FUNC void releasePalette();

GTPD_PRIVATE:

	struct State : BitFlag<u8> {

		u8 ready			: 1;
		u8 directTexture	: 1;
		u8 palette256		: 1;
		u8 deferPalette		: 1;
		u8 engineType		: 4;

	};

	s32 mTextureSlot; // Set if the cCellProxy owns the texture (DirectTexture disabled)
	s32 mPaletteSlot;
	State mState;
	void* mpTextureMgr;
	void* mpPaletteMgr;
	u32 mTextureBase;
	u32 mPaletteBase;
	fx32 mBrightnessFactor;
	cColorFilter* mpColorFilter;

};
NTR_SIZE_GUARD(cCellProxy, 0x28);

class cCellPrim : public CnObject {
	CN_OBJECT(cCellPrim);
public:

	GTPD_FUNC cCellPrim();

	GTPD_FUNC virtual ~cCellPrim() override;


	NTR_INLINE cCellProxy* getProxy() const {
		return mpProxies[mEngineType];
	}

GTPD_PRIVATE:

	struct Param : BitFlag<u32> {

		u8 flip					: 2;
		u8 						: 1;
		u8 shadow				: 1;
		u8 shadowPalette		: 4;

		u8 charBoundary			: 8;

		u8 affineEnable			: 1;
		u8 affineDoubleScale	: 1;
		u8 mode					: 2;
		u8 mosaic				: 1;
		u8 priority				: 3;

		u8 primGroup			: 4;
		u8						: 4;

	};

	cCellProxy* mpProxies[2];
	u32 mCellResID;
	u8 mEngineType;
	u8 mOAMSlot;
	u8 mOAMCount;
	u8 mPrimGroup;
	u16 mCellIndex;
	u16 mPosX;
	u16 mPosY;
	Param mParam;
	fx32 mScaleX;
	fx32 mScaleY;
	MtxFx22 mAffineMatrix;
	cCellPrim* mpNext;
	cAnimSequencer* mpSequencer;

};
NTR_SIZE_GUARD(cCellPrim, 0x40);

class cCellAnim : public CnObject {
	CN_OBJECT(cCellAnim);
public:

	static constexpr u32 AutoOffset = 1 << 31;

	struct SeqFileInfo {

		u16 paletteFileID;
		u16 textureFileID;
		u16 cellFileID;
		u16 animFileID;

	};

	enum LoadFlags {
		LoadPalette = 0x1,
		LoadTexture = 0x2,
		LoadCell = 0x4,
		LoadAnim = 0x8,
		LoadGraphics = LoadPalette | LoadTexture,
		LoadAll = LoadGraphics | LoadCell | LoadAnim
	};


	GTPD_FUNC cCellAnim();

	GTPD_FUNC virtual ~cCellAnim() override;

	GTPD_FUNC virtual void createProperty(CnPropertyList& s) override;

	GTPD_FUNC void reset();

	GTPD_FUNC void releaseAnimation();

	GTPD_FUNC void configure(u8 engineType, u32 texBase = AutoOffset, u32 palBase = AutoOffset);

	GTPD_FUNC void load(u32 seqNo, LoadFlags loadFlags);

	GTPD_FUNC bool update();

	GTPD_FUNC bool render();

	GTPD_FUNC u16 getSeqNo() const;

	GTPD_FUNC u8 getPaletteID() const;

	GTPD_FUNC u32 getPaletteSize() const;

	GTPD_FUNC void setEngineType(u8 engineType);

	GTPD_FUNC u8 getEngineType() const;

	GTPD_FUNC void setPosition(const CnVector& position);

	GTPD_FUNC s32 reserveDirectTexture(u32 size);

	GTPD_FUNC void releaseDirectTexture(s32 slot);

	GTPD_FUNC void uploadDirectTexture(const void* src, u32 size, u32 slot);

	GTPD_FUNC const SeqFileInfo& getSeqFileInfo(u32 seqNo) const;

	GTPD_FUNC void syncPalette();

	GTPD_FUNC void loadPalette(u32 fileID);

	GTPD_FUNC void releasePalette();

	GTPD_FUNC void releaseGraphics();

	GTPD_FUNC u16* getPaletteData() const;

	GTPD_FUNC void applyColorFilter(const cColorFilter& filter);

	GTPD_FUNC bool hasPalette256() const;

	GTPD_FUNC void applyBrightness(fx32 brightness);

	GTPD_FUNC void setPaletteDeferred();

	GTPD_FUNC void setColorFilter(const cColorFilter* filter);

	GTPD_FUNC u8 getPrimFlip() const;

	GTPD_FUNC void setPrimGroup(u8 group);

	GTPD_FUNC void setPrimDisplayPriority(u8 priority);

	GTPD_FUNC void setPrimShadow(bool enable, u8 paletteID);

	GTPD_FUNC void setSequencer(cAnimSequencer* sequencer);


	static const u16 seqFileIDMapLocalized[654][5];
	static const u16 seqFileIDMap[7082];
	static const SeqFileInfo seqFileInfoTable[7049];

GTPD_PRIVATE:

	u32 mAnimResID;
	u16 mSeqNo;
	u8 mEngineType;
	u32 mTextureBase;
	u32 mPaletteBase;
	cCellPrim mCellPrim;
	NNSG2dAnimController mAnimCtrl;
	u32 unk84;

};
NTR_SIZE_GUARD(cCellAnim, 0x88);
