# This Python file uses the following encoding: utf-8

import string
import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class LightsRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/switch/land_lights_left_pos",
            "laminar/B738/switch/land_lights_right_pos",
            "sim/cockpit2/switches/generic_lights_switch",
            "laminar/B738/toggle_switch/position_light_pos",
            "sim/cockpit2/switches/beacon_on"
        ]
  
    setSwich=Signal(str, bool)
    setStrobe=Signal( int)

    def sendRef(self, dic):
        self.setSwich.emit("landingL",bool(dic["laminar/B738/switch/land_lights_left_pos"][0]))
        self.setSwich.emit("landingR",bool(dic["laminar/B738/switch/land_lights_right_pos"][0]))
        self.setSwich.emit("runwayL",bool(dic["sim/cockpit2/switches/generic_lights_switch"][2]))
        self.setSwich.emit("runwayR",bool(dic["sim/cockpit2/switches/generic_lights_switch"][3]))
        self.setSwich.emit("taxi",bool(dic["sim/cockpit2/switches/generic_lights_switch"][4]))
        self.setSwich.emit("logo",bool(dic["sim/cockpit2/switches/generic_lights_switch"][1]))
        self.setSwich.emit("antiColizion",bool(dic["sim/cockpit2/switches/beacon_on"][0]))
        self.setSwich.emit("wing",bool(dic["sim/cockpit2/switches/generic_lights_switch"][0]))
        self.setSwich.emit("wheel",bool(dic["sim/cockpit2/switches/generic_lights_switch"][5]))

        self.setStrobe.emit(int(dic["laminar/B738/toggle_switch/position_light_pos"][0])+1)

        

       
