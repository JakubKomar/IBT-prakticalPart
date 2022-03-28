# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:38:01
 # @ Description: Render subcontroler - bleed air module
 '''

from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class RenderBleed(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/air/l_pack_pos",
            "laminar/B738/air/r_pack_pos",
            "laminar/B738/air/l_recirc_fan_pos",
            "laminar/B738/air/r_recirc_fan_pos",
            "laminar/B738/air/isolation_valve_pos",
            "laminar/B738/toggle_switch/bleed_air_1_pos",
            "laminar/B738/toggle_switch/bleed_air_2_pos",
            "laminar/B738/toggle_switch/bleed_air_apu_pos",

            "laminar/B738/annunciator/pack_left",
            "laminar/B738/annunciator/pack_right",
            "laminar/B738/annunciator/bleed_trip_1",
            "laminar/B738/annunciator/bleed_trip_2",
            "laminar/B738/annunciator/wing_body_ovht_left",
            "laminar/B738/annunciator/wing_body_ovht_right",
            "laminar/B738/annunciator/dual_bleed",

            "laminar/B738/indicators/duct_press_L",
            "laminar/B738/indicators/duct_press_R",

            "laminar/B738/air/apu/bleed_valve_pos",
            "laminar/B738/air/engine1/bleed_valve_pos",
            "laminar/B738/air/engine2/bleed_valve_pos",
            "laminar/B738/air/isolation/bleed_valve_pos",
            "laminar/B738/air/l_pack/bleed_valve_pos",
            "laminar/B738/air/r_pack/bleed_valve_pos",
            "sim/flightmodel/engine/ENGN_running",
            "sim/cockpit/engine/APU_running",
            "laminar/B738/engine/hide_asu",
            "laminar/B738/air/l_pack/bleed_valve_pos",
            "laminar/B738/air/r_pack/bleed_valve_pos",

        ]

    setSwich=Signal(str,int)
    setAnnunciator=Signal(str,bool)
    setPressIndicator=Signal(str,float)
    setImg=Signal(str, bool)
    setVal=Signal(str, float)
    def sendRef(self, dic):
        self.setSwich.emit("lPack", int(dic["laminar/B738/air/l_pack_pos"][0]))
        self.setSwich.emit("rPack", int(dic["laminar/B738/air/r_pack_pos"][0]))
        self.setSwich.emit("lFan", int(dic["laminar/B738/air/l_recirc_fan_pos"][0]))
        self.setSwich.emit("rFan", int(dic["laminar/B738/air/r_recirc_fan_pos"][0]))
        self.setSwich.emit("isoVal", int(dic["laminar/B738/air/isolation_valve_pos"][0]))
        self.setSwich.emit("blAirL", int(dic["laminar/B738/toggle_switch/bleed_air_1_pos"][0]))
        self.setSwich.emit("blAirR", int(dic["laminar/B738/toggle_switch/bleed_air_2_pos"][0]))
        self.setSwich.emit("blAirApu", int(dic["laminar/B738/toggle_switch/bleed_air_apu_pos"][0]))

        self.setAnnunciator.emit("lPack", bool(dic["laminar/B738/annunciator/pack_left"][0]))
        self.setAnnunciator.emit("rPack", bool(dic["laminar/B738/annunciator/pack_right"][0]))
        self.setAnnunciator.emit("lBleed", bool(dic["laminar/B738/annunciator/bleed_trip_1"][0]))
        self.setAnnunciator.emit("rBleed", bool(dic["laminar/B738/annunciator/bleed_trip_2"][0]))
        self.setAnnunciator.emit("lWBO", bool(dic["laminar/B738/annunciator/wing_body_ovht_left"][0]))
        self.setAnnunciator.emit("rWBO", bool(dic["laminar/B738/annunciator/wing_body_ovht_right"][0]))
        self.setAnnunciator.emit("dBleed", bool(dic["laminar/B738/annunciator/dual_bleed"][0]))

        self.setPressIndicator.emit("l",dic["laminar/B738/indicators/duct_press_L"][0])
        self.setPressIndicator.emit("r",dic["laminar/B738/indicators/duct_press_R"][0])



        self.setVal.emit("apuVal",dic["laminar/B738/air/apu/bleed_valve_pos"][0])
        self.setVal.emit("eng1Val", dic["laminar/B738/air/engine1/bleed_valve_pos"][0])
        self.setVal.emit("eng2Val", dic["laminar/B738/air/engine2/bleed_valve_pos"][0])
        self.setVal.emit("rPackVal", dic["laminar/B738/air/r_pack/bleed_valve_pos"][0])
        self.setVal.emit("lPackVal", dic["laminar/B738/air/l_pack/bleed_valve_pos"][0])
        self.setVal.emit("isolationVal", dic["laminar/B738/air/isolation/bleed_valve_pos"][0])

        self.setImg.emit("apuSource",dic["sim/cockpit/engine/APU_running"][0]==1)
        self.setImg.emit("apu",dic["sim/cockpit/engine/APU_running"][0]==1 and dic["laminar/B738/air/apu/bleed_valve_pos"][0]>0.5 )

        self.setImg.emit("eng1Source",dic["sim/flightmodel/engine/ENGN_running"][0]==1)
        self.setImg.emit("eng2Source",dic["sim/flightmodel/engine/ENGN_running"][1]==1)
        self.setImg.emit("eng1",dic["sim/flightmodel/engine/ENGN_running"][0]==1 and dic["laminar/B738/air/engine1/bleed_valve_pos"][0]>0.5 )
        self.setImg.emit("eng2",dic["sim/flightmodel/engine/ENGN_running"][1]==1 and dic["laminar/B738/air/engine2/bleed_valve_pos"][0]>0.5 )
        

        leftCirActive =((dic["sim/flightmodel/engine/ENGN_running"][0]==1 and 
            dic["laminar/B738/air/engine1/bleed_valve_pos"][0]>0.5 )or 
            (dic["sim/cockpit/engine/APU_running"][0]==1 and
            dic["laminar/B738/air/apu/bleed_valve_pos"][0]>0.5 ) 
        )

        rightCirActive =(( dic["sim/flightmodel/engine/ENGN_running"][1]==1 and 
            dic["laminar/B738/air/engine2/bleed_valve_pos"][0]>0.5 ) or 
            dic["laminar/B738/engine/hide_asu"][0]==0
        )

        leftCir= leftCirActive or (rightCirActive and dic["laminar/B738/air/isolation/bleed_valve_pos"][0]>0.5  )
        rightCir= rightCirActive or (leftCirActive and dic["laminar/B738/air/isolation/bleed_valve_pos"][0]>0.5  )
        leftPack= leftCir and dic["laminar/B738/air/l_pack/bleed_valve_pos"][0]>0.5 
        rightPack= rightCir and dic["laminar/B738/air/r_pack/bleed_valve_pos"][0]>0.5  
     

        self.setImg.emit("leftCircuit", leftCir)
        self.setImg.emit("rightCircuit", rightCir)


        self.setImg.emit("leftPack", leftPack)
        self.setImg.emit("rightPack", rightPack)
        self.setImg.emit("airCond", leftPack or rightPack)

        self.setImg.emit("groundCondAir", False)
        self.setImg.emit("asu", dic["laminar/B738/engine/hide_asu"][0]==0)

        