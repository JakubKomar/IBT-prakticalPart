# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:33:41
 # @ Description: Render subcontroler - fuel dials 
 '''

from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class FuelDialsRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = [
            "laminar/B738/fuel/center_tank_lbs",
            "laminar/B738/fuel/left_tank_lbs",
            "laminar/B738/fuel/right_tank_lbs",
            "laminar/B738/annunciator/low_fuel_press_c1",
            "laminar/B738/annunciator/low_fuel_press_c2",
            "laminar/B738/fuel/fuel_tank_pos_ctr1",
            "laminar/B738/fuel/fuel_tank_pos_ctr2",
            "sim/flightmodel/engine/ENGN_running"
        ]
    
    setTank = Signal(str, float)
    setWarn = Signal(str, bool)

    def sendRef(self, dic):
        self.setTank.emit("left",dic["laminar/B738/fuel/left_tank_lbs"][0])
        self.setTank.emit("center",dic["laminar/B738/fuel/center_tank_lbs"][0])
        self.setTank.emit("right",dic["laminar/B738/fuel/right_tank_lbs"][0])

        self.setWarn.emit("centerConfig",dic["laminar/B738/fuel/center_tank_lbs"][0]>1600 and 
            (bool(dic["sim/flightmodel/engine/ENGN_running"][0]) or bool(dic["sim/flightmodel/engine/ENGN_running"][1])) and
            ((bool(dic["laminar/B738/annunciator/low_fuel_press_c1"][0]) or not bool(dic["laminar/B738/fuel/fuel_tank_pos_ctr1"][0])) and
            (bool(dic["laminar/B738/annunciator/low_fuel_press_c2"][0]) or not bool(dic["laminar/B738/fuel/fuel_tank_pos_ctr2"][0])))
        )
        self.setWarn.emit("centerConfigEx",dic["laminar/B738/fuel/center_tank_lbs"][0]<800 or
            (not bool(dic["sim/flightmodel/engine/ENGN_running"][0]) and not bool(dic["sim/flightmodel/engine/ENGN_running"][1])) or
            ((not bool(dic["laminar/B738/annunciator/low_fuel_press_c1"][0]) and  bool(dic["laminar/B738/fuel/fuel_tank_pos_ctr1"][0])) or
            (not bool(dic["laminar/B738/annunciator/low_fuel_press_c2"][0]) and  bool(dic["laminar/B738/fuel/fuel_tank_pos_ctr2"][0])))
        
        )

        self.setWarn.emit("leftLow",dic["laminar/B738/fuel/left_tank_lbs"][0]<1000 )
        self.setWarn.emit("rightLow",dic["laminar/B738/fuel/right_tank_lbs"][0]<1000 )

        self.setWarn.emit("imbal",abs(dic["laminar/B738/fuel/right_tank_lbs"][0] - dic["laminar/B738/fuel/left_tank_lbs"][0])>1000 )

        self.setWarn.emit("imbalEx",abs(dic["laminar/B738/fuel/left_tank_lbs"][0] - dic["laminar/B738/fuel/right_tank_lbs"][0])<200 )