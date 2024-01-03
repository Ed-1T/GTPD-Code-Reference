#pragma once

#include "Framework/CnObject.hpp"
#include "Framework/CnNitroFile.hpp"
#include "Format/Cell.hpp"

class cUnit2d;
class uScript2dR;

class cAnimSequencer : public CnObject {
	CN_OBJECT(cAnimSequencer);
public:

	static constexpr u16 SETCORE  = 0xFFF0;
	static constexpr u16 OUTLINE  = 0xFFF3;
	static constexpr u16 CENTER   = 0xFFF4;
	static constexpr u16 POINT    = 0xFFF5;
	static constexpr u16 GMK_INFO = 0xFFF6;
	static constexpr u16 SECALL   = 0xFFF7;
	static constexpr u16 EFFCALL  = 0xFFF8;
	static constexpr u16 SENDMSG  = 0xFFF9;
	static constexpr u16 SHAPE    = 0xFFFA;
	static constexpr u16 ANIM_L   = 0xFFFB;
	static constexpr u16 CHAIN    = 0xFFFC;
	static constexpr u16 SEQBASE  = 0xFFFD;
	static constexpr u16 SEQSTOP  = 0xFFFE;
	static constexpr u16 SEQLOOP  = 0xFFFF;
	static constexpr u16 SEQFIRST = 0x0001;
	static constexpr u16 SEQHEAD  = 0x0002;


	GTPD_FUNC cAnimSequencer();

	GTPD_FUNC virtual ~cAnimSequencer() override;

	GTPD_FUNC virtual void createProperty(CnPropertyList& s) override;


	GTPD_FUNC void setParent(uScript2dR* pParent);

	GTPD_FUNC void setSeq(u16* pMtbl, bool bChain, s32 cueNo);

	GTPD_FUNC void reset(u16* pMtbl);

	GTPD_FUNC bool isTransDone() const;

	GTPD_FUNC bool hasSharedParent() const;

	GTPD_FUNC u16 getCurrentIndex() const;

	GTPD_FUNC u16 getSeqId() const;

	GTPD_FUNC void setSharedParent(cAnimSequencer* pSeq);

	GTPD_FUNC void setGhostMode(u32 sw);

	GTPD_FUNC void setAccelerator(u8 val);

	GTPD_FUNC void setLoopWait(u16 cnt);

	GTPD_FUNC void* readFrame(u32 idx);

	GTPD_FUNC void reloadReq();

	GTPD_FUNC void releaseVRAM();

	GTPD_FUNC void realTransReq(u32 idx);

	GTPD_FUNC void updateTrans();

	GTPD_FUNC bool update();

	GTPD_FUNC bool isEndFrame() const;

GTPD_PRIVATE:

	GTPD_FUNC void initSeq(u16* pseq);

	GTPD_FUNC bool setSeqAndCmd(bool bChain, s32 cueNo);

	GTPD_FUNC void seqcmd_center(u16* pseq);

	GTPD_FUNC void seqcmd_point(u16* pseq);

	GTPD_FUNC void seqcmd_core(u16* pseq);


	struct Param : BitFlag<u8> {

		u8 mbReqTrans		: 1;
		u8 mbTransDone		: 1;
		u8 mbGhostMode		: 1; // Suspends sounds and effects, prevents palette loading when switching CellSeqNo
		u8 mbLoopWait		: 1; // Loops the animation a given number of times, then stops the sequencer
		u8 mbLoopStop		: 1;
		u8 mbShared			: 1;
		u8 mAccelerator		: 2; // Once read, the frame length property is shifted by this value

	};

	u16* mpSeq;
	u32 mSeqPtr;
	u16 mBaseSeqId;
	u16 mCurrentIndex;
	u16 mCurrentFrame;
	Param mParam;
	uScript2dR* mpParent;
	CellTexSlice* mpCharData;
	CnNitroFileSpan* mpCharFile;
	u32 mTextureSize;
	u32 mTextureAddr;
	cAnimSequencer* mpSharedSeq;

};
NTR_SIZE_GUARD(cAnimSequencer, 0x2C);
