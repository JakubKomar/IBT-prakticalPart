# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:31:30
 # @ Description: Render subcontroler - lights module
 '''

from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class LightsRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/switch/land_lights_left_pos",
            "laminar/B738/switch/land_lights_right_pos",
            "sim/cockpit2/switches/generic_lights_switch",
            "laminar/B738/toggle_switch/position_light_pos",
            "sim/cockpit2/switches/beacon_on",
            "laminar/B738/button_switch/cover_position",
            "laminar/B738/toggle_switch/emer_exit_lights",
            "laminar/B738/annunciator/emer_exit"
        ]
  
    setSwich=Signal(str, bool)
    setComboSwich=Signal(str, bool, bool)
    setStrobe=Signal(int)
    setEmerGuard=Signal(bool)
    setEmerSwich=Signal(int)
    setEmerAnnun=Signal(float)

    def sendRef(self, dic):
        self.setSwich.emit("runwayL", bool(dic["sim/cockpit2/switches/generic_lights_switch"][2]))
        self.setSwich.emit("runwayR", bool(dic["sim/cockpit2/switches/generic_lights_switch"][3]))
        self.setSwich.emit("taxi", bool(dic["sim/cockpit2/switches/generic_lights_switch"][4]))
        self.setSwich.emit("logo", bool(dic["sim/cockpit2/switches/generic_lights_switch"][1]))
        self.setSwich.emit("antiColizion", bool(dic["sim/cockpit2/switches/beacon_on"][0]))
        self.setSwich.emit("wing", bool(dic["sim/cockpit2/switches/generic_lights_switch"][0]))
        self.setSwich.emit("wheel", bool(dic["sim/cockpit2/switches/generic_lights_switch"][5]))

        self.setStrobe.emit(int(dic["laminar/B738/toggle_switch/position_light_pos"][0])+1)

        self.setComboSwich.emit("landing", bool(dic["laminar/B738/switch/land_lights_left_pos"][0]),
            bool(dic["laminar/B738/switch/land_lights_right_pos"][0])
        )
        self.setComboSwich.emit("runway", bool(dic["sim/cockpit2/switches/generic_lights_switch"][2]),
            bool(dic["sim/cockpit2/switches/generic_lights_switch"][3])
        )

        self.setEmerGuard.emit(not bool(dic["laminar/B738/button_switch/cover_position"][9]))
        self.setEmerSwich.emit( int(dic["laminar/B738/toggle_switch/emer_exit_lights"][0]))
        self.setEmerAnnun.emit( dic["laminar/B738/annunciator/emer_exit"][0])