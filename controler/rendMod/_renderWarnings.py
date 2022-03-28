# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:29:53
 # @ Description: Render subcontroler - warnings, time, date, tat, module 
 '''

from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase
import datetime
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

            "sim/cockpit2/clock_timer/current_month",
            "sim/cockpit2/clock_timer/current_day",
            "sim/cockpit2/clock_timer/zulu_time_hours",
            "sim/cockpit2/clock_timer/zulu_time_minutes",
            "sim/cockpit2/clock_timer/zulu_time_seconds",
            "sim/cockpit2/temperature/outside_air_LE_temp_degc"
        ]
  
    setAnnunciator=Signal(str, bool)
    setTime=Signal(str)
    setDate=Signal(str)
    setTat=Signal(str)
    
    def sendRef(self, dic):
        self.setAnnunciator.emit("doors",bool(dic["laminar/B738/annunciator/six_pack_doors"][0]))
        self.setAnnunciator.emit("electrical",bool(dic["laminar/B738/annunciator/six_pack_elec"][0]))
        self.setAnnunciator.emit("engine",bool(dic["laminar/B738/annunciator/six_pack_eng"][0]) or bool(dic["laminar/B738/annunciator/six_pack_apu"][0]))
        self.setAnnunciator.emit("fire",bool(dic["laminar/B738/annunciator/six_pack_fire"][0]))
        self.setAnnunciator.emit("fuel",bool(dic["laminar/B738/annunciator/six_pack_fuel"][0]))
        self.setAnnunciator.emit("hydraulic",bool(dic["laminar/B738/annunciator/six_pack_hyd"][0]))
        self.setAnnunciator.emit("ice",bool(dic["laminar/B738/annunciator/six_pack_ice"][0]))
        self.setAnnunciator.emit("temp",bool(dic["laminar/B738/annunciator/six_pack_air_cond"][0]))

        self.setTime.emit(str(int(dic["sim/cockpit2/clock_timer/zulu_time_hours"][0])).zfill(2)+
            ":"+
            str(int(dic["sim/cockpit2/clock_timer/zulu_time_minutes"][0])).zfill(2)+
            ":"+
            str(int(dic["sim/cockpit2/clock_timer/zulu_time_seconds"][0])).zfill(2)
        )

        self.setDate.emit(str(int(dic["sim/cockpit2/clock_timer/current_day"][0])).zfill(2)+
            "."+
            str(int(dic["sim/cockpit2/clock_timer/current_month"][0])).zfill(2)+
            "."+
            str(datetime.datetime.now().year)[-2:]
        )

        self.setTat.emit(str(int(dic["sim/cockpit2/temperature/outside_air_LE_temp_degc"][0])) if dic["sim/cockpit2/temperature/outside_air_LE_temp_degc"][0]<0 else "+"+ str(int(dic["sim/cockpit2/temperature/outside_air_LE_temp_degc"][0])))

        
        
 
        

       
