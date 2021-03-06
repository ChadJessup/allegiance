/*
**  Copyright (C) 1996, 1997 Microsoft Corporation. All Rights Reserved.
**
**  File:	hullTypeIGC.cpp
**
**  Author: 
**
**  Description:
**      Implementation of the ChullTypeIGC class. This file was initially created by
**  the ATL wizard for the core object.
**
**  History:
*/
// hullTypeIGC.cpp : Implementation of ChullTypeIGC
#include "pch.h"
#include "hullTypeIGC.h"

/////////////////////////////////////////////////////////////////////////////
// ChullTypeIGC
HRESULT         ChullTypeIGC::Initialize(ImissionIGC* pMission,
                                         Time         now,
                                         const void*  data,
                                         int          dataSize)
{
    assert (pMission);
    m_pMission = pMission;

	ZRetailAssert (data && (dataSize >= sizeof(DataHullTypeIGC)));

    //Note ... we need to allocate & copy the DataHullTypeIGC + the variable length fields
    m_data = (DataHullTypeIGC*)(new char [dataSize]);
    assert (m_data);
    memcpy(m_data, data, dataSize);

    {
        for (int i = 0;
             ((i < c_cMaxPreferredPartTypes) && (m_data->preferredPartsTypes[i] != NA));
             i++)
        {
            IpartTypeIGC*  ppt = pMission->GetPartType(m_data->preferredPartsTypes[i]);
            assert (ppt);
            ppt->AddRef();
            m_preferredPartTypes.last(ppt);
        }
    }

    IIgcSite*   pigc = pMission->GetIgcSite();
    pigc->Preload(m_data->modelName, iswalpha(m_data->textureName[0])
                                              ? m_data->textureName
                                              : NULL);

    m_poIcon = pigc->LoadRadarIcon(m_data->iconName);

    {
        static const Vector z(0.0f, 0.0f, 1.0f);

        MultiHullBase*  pmhb = HitTest::Load(m_data->modelName);
#ifdef DREAMCAST
        if (pmhb)
#else
        assert (pmhb);
#endif    
        {

            {
                float           r = pmhb->GetOriginalRadius();
                m_scale = (0.5f * m_data->length / r);
#if 0
                {
                    const Vector&   ellipseEquation = pmhb->GetEllipseEquation();
                    debugf("%s/%d %f %f %f\n", m_data->name, m_data->hullID, ellipseEquation.x * m_scale, ellipseEquation.y * m_scale, ellipseEquation.z * m_scale);

                    double          v = ellipseEquation.x * ellipseEquation.y * ellipseEquation.z;
                    debugf("%s/%d\t(%s)\n\tOld length = %f\n\tNew Length = %f\n\tFrontal area = %f\n\tVolume = %f\n",
                           m_data->name, m_data->hullID, m_data->modelName, 
                           float(m_data->length), float(m_data->length) * r * float(pow(v, -1.0/3.0)),
                           pmhb->GetEllipseEquation().x * pmhb->GetEllipseEquation().y * m_scale * m_scale,
                           pmhb->GetEllipseEquation().x * pmhb->GetEllipseEquation().y * pmhb->GetEllipseEquation().z * m_scale * m_scale * m_scale);
                    debugf("\tDensity %f\n", m_data->mass / (0.2f * (pmhb->GetEllipseEquation().x * pmhb->GetEllipseEquation().y * pmhb->GetEllipseEquation().z * m_scale * m_scale * m_scale)));
                }
#endif
            }

            {
                const FrameDataUTL*   pfd = pmhb->GetFrame("cockpt");
                m_cockpit = pfd ? (pfd->position * m_scale) : z;
            }

            for (Mount i = m_data->maxWeapons - 1; (i >= 0); i--)
            {
                const HardpointData&    hd = GetHardpointData(i);

                const FrameDataUTL*   pfd = pmhb->GetFrame(hd.frameName);
                assert (pfd);   //Note: still need to handle pfd == NULL semi-gracefully in retail

                if (hd.bFixed)
                {
                    assert (i < m_data->maxFixedWeapons);
                    m_positionWeapons[i] = pfd ? (pfd->position * m_scale) : Vector::GetZero();
                }
                else
                {
                    assert (i >= m_data->maxFixedWeapons);

                    if (pfd)
                    {
                        m_positionWeapons[i] = pfd->position * m_scale;

                        static const Vector up(0.0f, 1.0f, 0.0f);
                        if (fabs(pfd->forward * up) < 0.9f)
                            m_orientationWeapons[i].Set(pfd->forward, up);
                        else
                        {
                            m_orientationWeapons[i].Set(pfd->forward, z);
                        }
                    }
                    else
                    {
                        m_positionWeapons[i] = Vector::GetZero();
                        m_orientationWeapons[i].Set(z);
                    }
                }
            }

#if 0
            if (m_data->maxFixedWeapons > 1)
            {
                debugf("\n%s/%d\t%s\t%f\n", GetName(), GetObjectID(), m_data->modelName, m_data->length);
                for (Mount i = 0; (i < m_data->maxFixedWeapons); i++)
                {
                    for (Mount j = i+1; (j < m_data->maxFixedWeapons); j++)
                    {
                        debugf("%d <-> %d\t%f %s %s\n", i, j, (m_positionWeapons[i] - m_positionWeapons[j]).Length(),
                               GetHardpointData(i).frameName, GetHardpointData(j).frameName);
                    }
                }
            }
#endif

            m_nLandSlots = 0;
            m_nLaunchSlots = 0;

            {
                //Get the stations launch slots
                static char    bfrLaunch[] = "launchX";

                while (true)
                {
                    //Do we have a launch slot?
                    bfrLaunch[6] = '1' + m_nLaunchSlots;
                    const FrameDataUTL* pfd = pmhb->GetFrame(bfrLaunch);
                    if (pfd)
                    {
                        assert (m_nLaunchSlots < c_maxShipLaunchSlots);
                        m_positionLaunches[m_nLaunchSlots] = pfd->position * m_scale;
                        m_directionLaunches[m_nLaunchSlots++] = pfd->forward;
                    }
                    else
                        break;
                }
            }
            {
                //debugf("Station %s/%s\n", GetName(), m_data.modelName);
                //Refigure the stations launch slots
                static char    bfrLand[] = "garageXA";

                while (true)
                {
                    //Do we have a launch slot?
                    bfrLand[6] = '1' + m_nLandSlots;
                    bfrLand[7] = 'A';
                    const FrameDataUTL* pfd = pmhb->GetFrame(bfrLand);
                    if (pfd)
                    {
                        assert (m_nLandSlots < c_maxShipLandSlots);

                        int i = 0;
                        do
                        {
                            assert (i < c_maxLandPlanes);
                            m_positionLandPlanes[m_nLandSlots][i] = pfd->position * m_scale;
                            m_directionLandPlanes[m_nLandSlots][i] = pfd->forward;

                            //debugf("\t%s %f %f %f\n", bfrLand, m_positionLandPlanes[m_nLandSlots][i].x, m_positionLandPlanes[m_nLandSlots][i].y, m_positionLandPlanes[m_nLandSlots][i].z);

                            bfrLand[7] = 'A' + ++i;
                            pfd = pmhb->GetFrame(bfrLand);
                        }
                        while (pfd);

                        m_nLandPlanes[m_nLandSlots++] = i;
                    }
                    else
                        break;
                }
            }
        }
#ifdef DREAMCAST
        else
        {
            m_cockpit = Vector::GetZero();
            for (int i = m_data->maxWeapons - 1; (i >= 0); i--)
                m_positionWeapons[i] = Vector::GetZero();

        }
#endif    
    }

    if (m_data->successorHullID != NA)
    {
        m_phtSuccessor = pMission->GetHullType(m_data->successorHullID);
        assert (m_phtSuccessor);
    }

    pMission->AddHullType(this);

    /*
    if (this->GetRechargeRate() > 0.0f)
    {
        float   eTotal = 0.0f;
        for (Mount i = 0; (i < this->GetMaxWeapons()); i++)
        {
            const HardpointData& hd = this->GetHardpointData(i);
            float   eMax = 0.0f;
            for (PartTypeLinkIGC*   ppl = pMission->GetPartTypes()->first(); (ppl != NULL); ppl = ppl->next())
            {
                IpartTypeIGC*   pt = ppl->data();
                if ((pt->GetEquipmentType() == ET_Weapon) &&
                    ((pt->GetPartMask() & ~hd.partMask) == 0))
                {
                    DataWeaponTypeIGC*  dwt = (DataWeaponTypeIGC*)(pt->GetData());
                    float   e = dwt->energyPerShot / dwt->dtimeBurst;
                    if (e > eMax)
                        eMax = e;
                }
            }
            eTotal += eMax;
        }

        if (this->GetPartMask(ET_Cloak, 0) != 0)
        {
            debugf("\n%s (%d)\n\t%8.3f%8.0f%8.0f\n\t%8.3f (120)\n\t%8.3f (180)\n\t%8.3f (200)\n\t%8.3f (%8.3f) %8.3f\n",
                   GetName(), GetObjectID(),
                   this->GetMaxEnergy() / this->GetRechargeRate(), this->GetMaxEnergy(), this->GetRechargeRate(),
                   this->GetMaxEnergy() / (120.0f - this->GetRechargeRate()),
                   this->GetMaxEnergy() / (180.0f - this->GetRechargeRate()),
                   this->GetMaxEnergy() / (200.0f - this->GetRechargeRate()),
                   (eTotal > this->GetRechargeRate())
                   ? this->GetMaxEnergy() / (eTotal - this->GetRechargeRate())
                   : -1.0f, eTotal, eTotal/this->GetRechargeRate());
        }
        else
        {
            debugf("\n%s (%d)\n\t%8.3f%8.0f%8.0f\n\t%8.3f (%8.3f) %8.3f\n",
                   GetName(), GetObjectID(),
                   this->GetMaxEnergy() / this->GetRechargeRate(), this->GetMaxEnergy(), this->GetRechargeRate(),
                   (eTotal > this->GetRechargeRate())
                   ? this->GetMaxEnergy() / (eTotal - this->GetRechargeRate())
                   : -1.0f, eTotal, eTotal/this->GetRechargeRate());
        }
    }
    */

    return S_OK;
}

void            ChullTypeIGC::Terminate(void)
{
    {
        PartTypeLinkIGC*   pptl;
        while (pptl = m_preferredPartTypes.first()) //intentional =
        {
            pptl->data()->Release();
            delete pptl;
        }
    }
    m_pMission->DeleteHullType(this);
}

int             ChullTypeIGC::Export(void*  data) const
{
    int nBytes = sizeof(DataHullTypeIGC) + sizeof(HardpointData) * m_data->maxWeapons;

    if (data)
        memcpy(data, m_data, nBytes);

    return nBytes;
}

