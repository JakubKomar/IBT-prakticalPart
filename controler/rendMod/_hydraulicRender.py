# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:32:07
 # @ Description: Render subcontroler - hydraulic module render
 '''

from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class HydraulicRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/brake/brake_press",
            "laminar/B738/autobrake/autobrake_pos",
            "laminar/B738/annunciator/auto_brake_disarm",

            "laminar/B738/toggle_switch/hydro_pumps1_pos",
            "laminar/B738/toggle_switch/electric_hydro_pumps1_pos",
            "laminar/B738/toggle_switch/electric_hydro_pumps2_pos",
            "laminar/B738/toggle_switch/hydro_pumps2_pos",

            "laminar/B738/annunciator/hyd_el_press_a",
            "laminar/B738/annunciator/hyd_el_press_b",
            "laminar/B738/annunciator/hyd_press_a",
            "laminar/B738/annunciator/hyd_press_b",
            "laminar/B738/annunciator/el_hyd_ovht_1",
            "laminar/B738/annunciator/el_hyd_ovht_2",

            "laminar/B738/hydraulic/A_status",
            "laminar/B738/hydraulic/B_status",

        ]
  
    setSwichMulti=Signal(str, int)
    setSwich=Signal(str, bool)
    setAnnuticator=Signal(str, float)
    setImg=Signal(str, bool)
    def sendRef(self, dic):
        self.setSwichMulti.emit("autoBrake", int(dic["laminar/B738/autobrake/autobrake_pos"][0]))

        self.setSwich.emit("hydroPump1", int(dic["laminar/B738/toggle_switch/hydro_pumps1_pos"][0]))
        self.setSwich.emit("electrPump1", int(dic["laminar/B738/toggle_switch/electric_hydro_pumps1_pos"][0]))
        self.setSwich.emit("hydroPump2", int(dic["laminar/B738/toggle_switch/hydro_pumps2_pos"][0]))
        self.setSwich.emit("electrPump2", int(dic["laminar/B738/toggle_switch/electric_hydro_pumps2_pos"][0]))

        self.setAnnuticator.emit("electrPump1Lp", dic["laminar/B738/annunciator/hyd_el_press_a"][0])
        self.setAnnuticator.emit("electrPump2Lp", dic["laminar/B738/annunciator/hyd_el_press_b"][0])
        self.setAnnuticator.emit("hydroPump1Lp", dic["laminar/B738/annunciator/hyd_press_a"][0])
        self.setAnnuticator.emit("hydroPump2Lp", dic["laminar/B738/annunciator/hyd_press_b"][0])
        self.setAnnuticator.emit("electrPump1Ov", dic["laminar/B738/annunciator/el_hyd_ovht_1"][0])
        self.setAnnuticator.emit("electrPump2Ov", dic["laminar/B738/annunciator/el_hyd_ovht_2"][0])

        self.setAnnuticator.emit("stbyPress",0)
        self.setAnnuticator.emit("lowQty", 0)

        self.setAnnuticator.emit("autoBreakeDisarm", dic["laminar/B738/annunciator/auto_brake_disarm"][0])
        self.setAnnuticator.emit("antiSkid", 0)
        self.setAnnuticator.emit("breakPress", dic["laminar/B738/brake/brake_press"][0])

        self.setImg.emit("aStat", dic["laminar/B738/hydraulic/A_status"][0]==1)
        self.setImg.emit("bStat", dic["laminar/B738/hydraulic/B_status"][0]==1)
        self.setImg.emit("stbStat", 1==1)

        self.setImg.emit("eng1", dic["laminar/B738/annunciator/hyd_press_a"][0]==0 and dic["laminar/B738/toggle_switch/hydro_pumps1_pos"][0]==1)
        self.setImg.emit("eng2", dic["laminar/B738/annunciator/hyd_press_b"][0]==0 and dic["laminar/B738/toggle_switch/hydro_pumps2_pos"][0]==1)
        self.setImg.emit("el1", dic["laminar/B738/toggle_switch/electric_hydro_pumps1_pos"][0]==1 and dic["laminar/B738/annunciator/hyd_el_press_a"][0]==0)
        self.setImg.emit("el2", dic["laminar/B738/toggle_switch/electric_hydro_pumps2_pos"][0]==1 and dic["laminar/B738/annunciator/hyd_el_press_b"][0]==0)

        self.setImg.emit("aSource", (dic["laminar/B738/annunciator/hyd_press_a"][0]==0 and dic["laminar/B738/toggle_switch/hydro_pumps1_pos"][0]==1) or
            (dic["laminar/B738/toggle_switch/electric_hydro_pumps1_pos"][0]==1 and dic["laminar/B738/annunciator/hyd_el_press_a"][0]==0)
        )
        self.setImg.emit("bSource", (dic["laminar/B738/annunciator/hyd_press_b"][0]==0 and dic["laminar/B738/toggle_switch/hydro_pumps2_pos"][0]==1) or
            (dic["laminar/B738/toggle_switch/electric_hydro_pumps2_pos"][0]==1 and dic["laminar/B738/annunciator/hyd_el_press_b"][0]==0)
        )
        

       
