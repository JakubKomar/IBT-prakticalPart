# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class FuelDialsRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = [
            "laminar/B738/fuel/center_tank_lbs",
            "laminar/B738/fuel/left_tank_lbs",
            "laminar/B738/fuel/right_tank_lbs",
        ]
    
    setTank = Signal(str, float)

    def sendRef(self, dic):
        self.setTank.emit("left",dic["laminar/B738/fuel/left_tank_lbs"][0])
        self.setTank.emit("center",dic["laminar/B738/fuel/center_tank_lbs"][0])
        self.setTank.emit("right",dic["laminar/B738/fuel/right_tank_lbs"][0])
