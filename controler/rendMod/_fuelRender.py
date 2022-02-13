# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal


class RenderFuel(QObject):

    def __init__(self):
        QObject.__init__(self)

    setCrossFeed = Signal(bool)
    setPumpSwich = Signal(str, bool)
    setTank = Signal(int, float)

    def render(self):
        self.pumpStateUpdateAlt()

    def pumpStateUpdate(self):
        self.setPumpSwich.emit("lft1", int(client.client.getDREF("laminar/B738/fuel/fuel_tank_pos_lft1")[0]))
        self.setPumpSwich.emit("lft2", int(client.client.getDREF("laminar/B738/fuel/fuel_tank_pos_lft2")[0]))
        self.setPumpSwich.emit("ctr1", int(client.client.getDREF("laminar/B738/fuel/fuel_tank_pos_ctr1")[0]))
        self.setPumpSwich.emit("ctr2", int(client.client.getDREF("laminar/B738/fuel/fuel_tank_pos_ctr2")[0]))
        self.setPumpSwich.emit("rgt1", int(client.client.getDREF("laminar/B738/fuel/fuel_tank_pos_rgt1")[0]))
        self.setPumpSwich.emit("rgt2", int(client.client.getDREF("laminar/B738/fuel/fuel_tank_pos_rgt2")[0]))
        
    def pumpStateUpdateAlt(self):
        argList=[]
        for i in range(0,110):
            argList.append("laminar/B738/fuel/fuel_tank_pos_ctr1")
        var= client.client.getDREFs(argList)
        print(len(var))