# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class EngineRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/annunciator/apu_fire",
            "laminar/B738/electrical/apu_temp",
            "laminar/B738/electrical/apu_low_oil",
            "laminar/B738/annunciator/apu_fault",
            "laminar/B738/spring_toggle_switch/APU_start_pos",
            "sim/cockpit/engine/APU_running",
            "laminar/B738/engine/mixture_ratio1",
            "laminar/B738/engine/mixture_ratio2",
            "laminar/B738/engine/starter1_pos",
            "laminar/B738/engine/starter2_pos",
            "laminar/B738/toggle_switch/eng_start_source"
        ]
  
    apuSet=Signal(str, float)
    engSwichSet=Signal(str, int)

    def sendRef(self, dic):
        self.apuSet.emit("fault",dic["laminar/B738/annunciator/apu_fault"][0])
        self.apuSet.emit("fire",dic["laminar/B738/annunciator/apu_fire"][0])
        self.apuSet.emit("temp",dic["laminar/B738/electrical/apu_temp"][0])
        self.apuSet.emit("lowOil",dic["laminar/B738/electrical/apu_low_oil"][0])
        self.apuSet.emit("startPos",dic["laminar/B738/spring_toggle_switch/APU_start_pos"][0])
        self.apuSet.emit("apuRuning",dic["sim/cockpit/engine/APU_running"][0])
        self.apuSet.emit("apuRuning",dic["sim/cockpit/engine/APU_running"][0])
        self.apuSet.emit("maint",0)
        self.apuSet.emit("overSpeed",0)

        self.engSwichSet.emit("mix1", 1 if dic["laminar/B738/engine/mixture_ratio1"][0]>=1 else 0)
        self.engSwichSet.emit("mix2", 1 if dic["laminar/B738/engine/mixture_ratio2"][0]>=1 else 0)
        self.engSwichSet.emit("starter1", int(dic["laminar/B738/engine/starter1_pos"][0]))
        self.engSwichSet.emit("starter2", int(dic["laminar/B738/engine/starter2_pos"][0]))
        self.engSwichSet.emit("startSource", int(dic["laminar/B738/toggle_switch/eng_start_source"][0])+1)

       
