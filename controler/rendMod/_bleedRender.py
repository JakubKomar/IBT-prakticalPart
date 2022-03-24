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
            "laminar/B738/indicators/duct_press_R"
        ]

    setSwich=Signal(str,int)
    setAnnunciator=Signal(str,bool)
    setPressIndicator=Signal(str,float)
    
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