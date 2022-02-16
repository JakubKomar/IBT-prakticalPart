# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class RenderFuel(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/fuel/fuel_tank_pos_lft1",
            "laminar/B738/fuel/fuel_tank_pos_lft2",
            "laminar/B738/fuel/fuel_tank_pos_ctr1",
            "laminar/B738/fuel/fuel_tank_pos_ctr2",
            "laminar/B738/fuel/fuel_tank_pos_rgt1",
            "laminar/B738/fuel/fuel_tank_pos_rgt2",
            "laminar/B738/fuel/fuel_tank_pos_rgt2",
            "laminar/B738/knobs/cross_feed_pos",
            "laminar/B738/fuel/center_tank_lbs",
            "laminar/B738/fuel/left_tank_lbs",
            "laminar/B738/fuel/right_tank_lbs",
            "laminar/B738/annunciator/eng1_valve_closed",
            "laminar/B738/annunciator/eng2_valve_closed",
            "laminar/B738/annunciator/spar1_valve_closed",
            "laminar/B738/annunciator/spar2_valve_closed",
            "laminar/B738/fuel/cross_feed_valve",
            "laminar/B738/annunciator/bypass_filter_1",
            "laminar/B738/annunciator/bypass_filter_2",
            "laminar/B738/annunciator/low_fuel_press_c1",
            "laminar/B738/annunciator/low_fuel_press_c2",
            "laminar/B738/annunciator/low_fuel_press_l1",
            "laminar/B738/annunciator/low_fuel_press_l2",
            "laminar/B738/annunciator/low_fuel_press_r1",
            "laminar/B738/annunciator/low_fuel_press_r2",
            "sim/cockpit2/temperature/outside_air_temp_degc", # ref dont searched
            "sim/cockpit/engine/APU_running"
        ]
    
    setCrossFeed = Signal(bool)
    setPumpSwich = Signal(str, bool)
    setTank = Signal(str, float)
    setFuelTemp = Signal(float)
    setIndicator = Signal(str, bool)

    def sendRef(self, dic):
        self.setPumpSwich.emit("lft1", bool(dic["laminar/B738/fuel/fuel_tank_pos_lft1"][0]))
        self.setPumpSwich.emit("lft2", bool(dic["laminar/B738/fuel/fuel_tank_pos_lft2"][0]))
        self.setPumpSwich.emit("ctr1", bool(dic["laminar/B738/fuel/fuel_tank_pos_ctr1"][0]))
        self.setPumpSwich.emit("ctr2", bool(dic["laminar/B738/fuel/fuel_tank_pos_ctr2"][0]))
        self.setPumpSwich.emit("rgt1", bool(dic["laminar/B738/fuel/fuel_tank_pos_rgt1"][0]))
        self.setPumpSwich.emit("rgt2", bool(dic["laminar/B738/fuel/fuel_tank_pos_rgt2"][0]))

        self.setCrossFeed.emit(bool(dic["laminar/B738/knobs/cross_feed_pos"][0]))

        self.setTank.emit("left",dic["laminar/B738/fuel/left_tank_lbs"][0])
        self.setTank.emit("center",dic["laminar/B738/fuel/center_tank_lbs"][0])
        self.setTank.emit("right",dic["laminar/B738/fuel/right_tank_lbs"][0])

        self.setIndicator.emit("en1VC", bool(dic["laminar/B738/annunciator/eng1_valve_closed"][0]))
        self.setIndicator.emit("en2VC", bool(dic["laminar/B738/annunciator/eng2_valve_closed"][0]))
        self.setIndicator.emit("sp1VC", bool(dic["laminar/B738/annunciator/spar1_valve_closed"][0]))
        self.setIndicator.emit("sp2VC", bool(dic["laminar/B738/annunciator/spar2_valve_closed"][0]))
        self.setIndicator.emit("bpf1", bool(dic["laminar/B738/annunciator/bypass_filter_1"][0]))
        self.setIndicator.emit("bpf2", bool(dic["laminar/B738/annunciator/bypass_filter_2"][0]))
        self.setIndicator.emit("lfpC1", bool(dic["laminar/B738/annunciator/low_fuel_press_c1"][0]))
        self.setIndicator.emit("lfpC2", bool(dic["laminar/B738/annunciator/low_fuel_press_c2"][0]))
        self.setIndicator.emit("lfpL1", bool(dic["laminar/B738/annunciator/low_fuel_press_l1"][0]))
        self.setIndicator.emit("lfpL2", bool(dic["laminar/B738/annunciator/low_fuel_press_l2"][0]))
        self.setIndicator.emit("lfpR1", bool(dic["laminar/B738/annunciator/low_fuel_press_r1"][0]))
        self.setIndicator.emit("lfpR2", bool(dic["laminar/B738/annunciator/low_fuel_press_r2"][0]))
        self.setIndicator.emit("cfv", bool(dic["laminar/B738/fuel/cross_feed_valve"][0]))   # to do intesity of light
        self.setFuelTemp.emit(dic["sim/cockpit2/temperature/outside_air_temp_degc"][0])
        self.setIndicator.emit("apuRuning", bool(dic["sim/cockpit/engine/APU_running"][0]))
