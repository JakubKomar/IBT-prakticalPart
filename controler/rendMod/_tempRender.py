# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class TempRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/air/aft_cab_temp/rheostat",
            "laminar/B738/air/cont_cab_temp/rheostat",
            "laminar/B738/air/fwd_cab_temp/rheostat",
            "laminar/B738/air/trim_air_pos",
            "laminar/B738/cabin_temp",
            "laminar/B738/toggle_switch/eq_cool_supply",
            "laminar/B738/toggle_switch/eq_cool_exhaust"
        ]
  
    setTrim=Signal(bool)
    setCooling=Signal(str,bool)
    setTempControl=Signal(str,float)
    def sendRef(self, dic):
        self.setTrim.emit(bool(dic["laminar/B738/air/trim_air_pos"][0]))
        self.setCooling.emit("suply",bool(dic["laminar/B738/toggle_switch/eq_cool_supply"][0]))
        self.setCooling.emit("exhoust",bool(dic["laminar/B738/toggle_switch/eq_cool_exhaust"][0]))
        self.setTempControl.emit("cont_cab_temp", dic["laminar/B738/air/cont_cab_temp/rheostat"][0])
        self.setTempControl.emit("aft_cab_temp", dic["laminar/B738/air/aft_cab_temp/rheostat"][0])
        self.setTempControl.emit("fwd_cab_temp", dic["laminar/B738/air/fwd_cab_temp/rheostat"][0])
       
