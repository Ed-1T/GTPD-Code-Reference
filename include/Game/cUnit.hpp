#pragma once

#include "Framework/CnObject.hpp"
#include "Framework/CnMath.hpp"

class cUnit : public CnObject {
	CN_OBJECT(cUnit);
public:

	GTPD_FUNC virtual ~cUnit() override;

	GTPD_FUNC virtual void createProperty(CnPropertyList& s) override;

GTPD_PRIVATE:

};
