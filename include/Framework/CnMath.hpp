#pragma once

#include "Common.hpp"

class CnVector : public VecFx32 {
public:

};
NTR_SIZE_GUARD(CnVector, 0xC);

class CnVector16 : public VecFx16 {
public:

};
NTR_SIZE_GUARD(CnVector16, 0x6);

namespace CnMath {

	GTPD_FUNC s32 getCurrentData(s32 startData, s32 targetData, s32 startSpeed, s32 acc, s32 current, s32 frame);

	GTPD_FUNC s32 getSpeedData(s32 startData, s32 targetData, s32 startSpeed, s32 frame);

	GTPD_FUNC s32 getAccData(s32 startData, s32 targetData, s32 startSpeed, s32 frame);

}
