# This Python file uses the following encoding: utf-8

import string
import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class WarnigsRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/annunciator/six_pack_apu",
            "laminar/B738/annunciator/six_pack_doors",
            "laminar/B738/annunciator/six_pack_elec",
            "laminar/B738/annunciator/six_pack_eng",
            "laminar/B738/annunciator/six_pack_fire",
            "laminar/B738/annunciator/six_pack_fuel",
            "laminar/B738/annunciator/six_pack_hyd",
            "laminar/B738/annunciator/six_pack_ice",
            "laminar/B738/annunciator/six_pack_air_cond",
            "laminar/B738/annunciator/six_pack_flt_cont",
        ]
  
    setAnnunciator=Signal(str, bool)

    def sendRef(self, dic):
        self.setAnnunciator.emit("apu",bool(dic["laminar/B738/annunciator/six_pack_apu"][0]))
        self.setAnnunciator.emit("doors",bool(dic["laminar/B738/annunciator/six_pack_doors"][0]))
        self.setAnnunciator.emit("electrical",bool(dic["laminar/B738/annunciator/six_pack_elec"][0]))
        self.setAnnunciator.emit("engine",bool(dic["laminar/B738/annunciator/six_pack_eng"][0]))
        self.setAnnunciator.emit("fire",bool(dic["laminar/B738/annunciator/six_pack_fire"][0]))
        self.setAnnunciator.emit("fuel",bool(dic["laminar/B738/annunciator/six_pack_fuel"][0]))
        self.setAnnunciator.emit("hydraulic",bool(dic["laminar/B738/annunciator/six_pack_hyd"][0]))
        self.setAnnunciator.emit("ice",bool(dic["laminar/B738/annunciator/six_pack_ice"][0]))
        self.setAnnunciator.emit("temp",bool(dic["laminar/B738/annunciator/six_pack_air_cond"][0]))
        self.setAnnunciator.emit("flyCont",bool(dic["laminar/B738/annunciator/six_pack_flt_cont"][0]))
 
        

       
