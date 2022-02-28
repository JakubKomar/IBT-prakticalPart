# This Python file uses the following encoding: utf-8

import model.libInit as client
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
            "laminar/B738/annunciator/equip_door"

        ]
  
    setDoorIndicator=Signal(str, bool)

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
