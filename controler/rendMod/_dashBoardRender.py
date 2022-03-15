# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class DashBoardRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["sim/cockpit2/controls/flap_handle_deploy_ratio",
            "sim/cockpit2/controls/flap_ratio",
            "laminar/B738/annunciator/slats_transit",
            "laminar/B738/annunciator/slats_extend",
            "laminar/B738/systems/brake_temp_left_in",
            "laminar/B738/systems/brake_temp_left_out",
            "laminar/B738/systems/brake_temp_right_in",
            "laminar/B738/systems/brake_temp_right_out",
            "laminar/B738/hydraulic/A_pressure",
            "laminar/B738/hydraulic/B_pressure",
            "laminar/B738/hydraulic/hyd_A_qty",
            "laminar/B738/hydraulic/hyd_B_qty",

            "sim/flightmodel/controls/lsplrdef",
            "sim/flightmodel/controls/rsplrdef",
            "sim/flightmodel/controls/lail1def",
            "sim/flightmodel/controls/lail2def",
            "sim/flightmodel/controls/hstab1_elv1def",
            "sim/flightmodel/controls/ldruddef",
        ]
  
    setAnnunciator=Signal(str, float)
    setFlapIndicator=Signal(str, float)
    setIndicators=Signal(str, float)
    def sendRef(self, dic):
        self.setAnnunciator.emit("transit",dic["laminar/B738/annunciator/slats_transit"][0])
        self.setAnnunciator.emit("extend",dic["laminar/B738/annunciator/slats_extend"][0])

        self.setFlapIndicator.emit("actState",dic["sim/cockpit2/controls/flap_handle_deploy_ratio"][0])
        self.setFlapIndicator.emit("setState",dic["sim/cockpit2/controls/flap_ratio"][0])

        self.setIndicators.emit("breakLInTemp",dic["laminar/B738/systems/brake_temp_left_in"][0])
        self.setIndicators.emit("breakLOutTemp",dic["laminar/B738/systems/brake_temp_left_out"][0])
        self.setIndicators.emit("breakRInTemp",dic["laminar/B738/systems/brake_temp_right_in"][0])
        self.setIndicators.emit("breakROutTemp",dic["laminar/B738/systems/brake_temp_right_out"][0])
        self.setIndicators.emit("aPress",dic["laminar/B738/hydraulic/A_pressure"][0])
        self.setIndicators.emit("bPress",dic["laminar/B738/hydraulic/B_pressure"][0])
        self.setIndicators.emit("aQty",dic["laminar/B738/hydraulic/hyd_A_qty"][0])
        self.setIndicators.emit("bQty",dic["laminar/B738/hydraulic/hyd_B_qty"][0])

        self.setIndicators.emit("elev",dic["sim/flightmodel/controls/hstab1_elv1def"][0]/18.8 if
            dic["sim/flightmodel/controls/hstab1_elv1def"][0]>0  else
            dic["sim/flightmodel/controls/hstab1_elv1def"][0]/20 
        )
        self.setIndicators.emit("ruder",dic["sim/flightmodel/controls/ldruddef"][0]/24.5)
        self.setIndicators.emit("lSplr",dic["sim/flightmodel/controls/lsplrdef"][0]/36)
        self.setIndicators.emit("rSplr",dic["sim/flightmodel/controls/rsplrdef"][0]/36)

        self.setIndicators.emit("aliL",dic["sim/flightmodel/controls/lail1def"][0]/20 if
            dic["sim/flightmodel/controls/lail1def"][0]>0  else
            dic["sim/flightmodel/controls/lail1def"][0]/24
        )
        self.setIndicators.emit("aliR",dic["sim/flightmodel/controls/lail2def"][0]/20 if
            dic["sim/flightmodel/controls/lail2def"][0]>0  else
            dic["sim/flightmodel/controls/lail2def"][0]/24
        )




       
