# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:28:44
 # @ Description: Render subcontroler - temperature module 
 '''

from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class TempRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/air/aft_cab_temp/rheostat",
            "laminar/B738/air/cont_cab_temp/rheostat",
            "laminar/B738/air/fwd_cab_temp/rheostat",
            "laminar/B738/air/trim_air_pos",
            "laminar/B738/zone_temp",
            "laminar/B738/toggle_switch/eq_cool_supply",
            "laminar/B738/toggle_switch/eq_cool_exhaust"
        ]
    
    setTrim=Signal(bool)
    setCooling=Signal(str,bool)
    setTempControl=Signal(str,float)
    setTemp=Signal(str,float)
    setIndicator=Signal(str,float)

    def sendRef(self, dic):
        self.setTrim.emit(bool(dic["laminar/B738/air/trim_air_pos"][0]))
        self.setCooling.emit("suply",bool(dic["laminar/B738/toggle_switch/eq_cool_supply"][0]))
        self.setCooling.emit("exhoust",bool(dic["laminar/B738/toggle_switch/eq_cool_exhaust"][0]))

        self.setTempControl.emit("cont_cab_temp", dic["laminar/B738/air/cont_cab_temp/rheostat"][0])
        self.setTempControl.emit("aft_cab_temp", dic["laminar/B738/air/aft_cab_temp/rheostat"][0])
        self.setTempControl.emit("fwd_cab_temp", dic["laminar/B738/air/fwd_cab_temp/rheostat"][0])

        self.setTemp.emit("cabDuct", dic["laminar/B738/zone_temp"][0])
        self.setTemp.emit("fwdDuct",25+ (dic["laminar/B738/air/fwd_cab_temp/rheostat"][0]*17-7.5))
        self.setTemp.emit("aftDuct",25+(dic["laminar/B738/air/aft_cab_temp/rheostat"][0]*17-7.5))

        self.setTemp.emit("aftCab",25+(dic["laminar/B738/air/aft_cab_temp/rheostat"][0]*10-5))
        self.setTemp.emit("fwdCab",25+(dic["laminar/B738/air/fwd_cab_temp/rheostat"][0]*10-5))
        self.setTemp.emit("packR",21)
        self.setTemp.emit("packL",25)

        self.setIndicator.emit("cabZone",0)
        self.setIndicator.emit("aftZone",0)
        self.setIndicator.emit("fwdZone",0)