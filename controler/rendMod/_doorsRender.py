# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:36:56
 # @ Description: Render subcontroler - door state module
 '''

from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class DoorRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/annunciator/fwd_cargo",
            "laminar/B738/annunciator/aft_cargo",
            "laminar/B738/annunciator/fwd_entry",
            "laminar/B738/annunciator/fwd_service",
            "laminar/B738/annunciator/aft_entry",
            "laminar/B738/annunciator/aft_service",
            "laminar/B738/annunciator/left_fwd_overwing",
            "laminar/B738/annunciator/right_fwd_overwing",
            "laminar/B738/annunciator/left_aft_overwing",
            "laminar/B738/annunciator/right_aft_overwing",
            "laminar/B738/annunciator/equip_door",
            "sim/cockpit/switches/fasten_seat_belts",
            "laminar/B738/toggle_switch/no_smoking_pos",
            "737x/cabin/set_pax_lighting",
            "737u/cabin/set_entry_lighting"

        ]
  
    setDoorIndicator=Signal(str, bool)
    setSwich=Signal(str, int)

    def sendRef(self, dic):
        self.setDoorIndicator.emit("fwdEntry",bool(dic["laminar/B738/annunciator/fwd_entry"][0]))
        self.setDoorIndicator.emit("fwdService",bool(dic["laminar/B738/annunciator/fwd_service"][0]))
        self.setDoorIndicator.emit("leftFwdOver",bool(dic["laminar/B738/annunciator/left_fwd_overwing"][0]))
        self.setDoorIndicator.emit("rightFwdOver",bool(dic["laminar/B738/annunciator/right_fwd_overwing"][0]))
        self.setDoorIndicator.emit("leftAFTOver",bool(dic["laminar/B738/annunciator/left_aft_overwing"][0]))
        self.setDoorIndicator.emit("rightAFTOver",bool(dic["laminar/B738/annunciator/right_aft_overwing"][0]))
        self.setDoorIndicator.emit("aftEntry",bool(dic["laminar/B738/annunciator/aft_entry"][0]))
        self.setDoorIndicator.emit("aftService",bool(dic["laminar/B738/annunciator/aft_service"][0]))
        self.setDoorIndicator.emit("fwdCargo",bool(dic["laminar/B738/annunciator/fwd_cargo"][0]))
        self.setDoorIndicator.emit("aftCargo",bool(dic["laminar/B738/annunciator/aft_cargo"][0]))
        self.setDoorIndicator.emit("equip",bool(dic["laminar/B738/annunciator/equip_door"][0]))


        self.setSwich.emit("noSmoke",int(dic["laminar/B738/toggle_switch/no_smoking_pos"][0]))
        self.setSwich.emit("seatBelts",int(dic["sim/cockpit/switches/fasten_seat_belts"][0]))

        self.setSwich.emit("entryLight",int(dic["737u/cabin/set_entry_lighting"][0]))


        paxVal = int(dic["737x/cabin/set_pax_lighting"][0])
        
        if paxVal==0:
            paxPos=0
        elif paxVal==3:
            paxPos=1
        elif paxVal==1:
            paxPos=2
        elif paxVal==2:
            paxPos=3
        elif paxVal==4:
            paxPos=4

        self.setSwich.emit("paxLighting",paxPos)