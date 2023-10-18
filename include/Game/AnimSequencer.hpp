#pragma once

#include "CnObject.hpp"
#include "Format/Cell.hpp"
#include "File.hpp"

class cUnit2d;
class uScript2dR;

class cAnimSequencer : public CnObject {
	GTPD_OBJECT(cAnimSequencer);
public:

	GTPD_FUNC cAnimSequencer();

	GTPD_FUNC virtual ~cAnimSequencer() override;

GTPD_PRIVATE:

	struct Param : BitFlag<u8> {

		u8 dirty			: 1;
		u8 textureLoaded	: 1;
		u8 unk4				: 1;
		u8					: 1;
		u8					: 1;
		u8 unk20			: 1;
		u8 					: 1;
		u8 					: 1;

	};

	u16* mpScript;
	u32 mSeqPtr;
	u16 mCellSeqNo;
	u16 mCurrentIndex;
	u16 mCurrentFrame;
	Param mParam;
	uScript2dR* mpParent;
	CellTexSlice* mpCellTexSlices;
	cFileSpan* mpCellTexStream;
	u32 mTextureSize;
	s32 mTextureSlot;
	cAnimSequencer* mpSharedSeq;

};
NTR_SIZE_GUARD(cAnimSequencer, 0x2C);
