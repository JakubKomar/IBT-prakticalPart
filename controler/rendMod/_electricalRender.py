# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class ElectricalRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/button_switch/cover_position",

            "laminar/B738/one_way_switch/drive_disconnect1_pos",
            "laminar/B738/one_way_switch/drive_disconnect2_pos",
            "laminar/B738/annunciator/drive1",
            "laminar/B738/annunciator/drive2",
            "laminar/B738/annunciator/standby_pwr_off",
            "laminar/B738/annunciator/source_off1",
            "laminar/B738/annunciator/source_off2",
            "laminar/B738/annunciator/ground_power_avail",
            "laminar/B738/annunciator/trans_bus_off1",
            "laminar/B738/annunciator/trans_bus_off2",
            "laminar/B738/annunciator/gen_off_bus1",
            "laminar/B738/annunciator/gen_off_bus2",
            "laminar/B738/annunciator/apu_gen_off_bus",

            "laminar/B738/electric/standby_bat_pos",
            "sim/cockpit2/electrical/cross_tie",
            "sim/cockpit/electrical/battery_on",
            "laminar/B738/one_way_switch/drive_disconnect1_pos",
            "laminar/B738/one_way_switch/drive_disconnect2_pos",
            "laminar/B738/toggle_switch/ife_pass_seat_pos",
            "laminar/B738/toggle_switch/cab_util_pos",
        ]
  
    guardUpdate= Signal(str,bool)
    swichUpdate= Signal(str,int)
    indicatorUpdate=Signal(str,bool)
    def sendRef(self, dic):
        self.guardUpdate.emit("batteryCover",not bool(dic["laminar/B738/button_switch/cover_position"][2]))
        self.guardUpdate.emit("standbyPower",not bool(dic["laminar/B738/button_switch/cover_position"][3]))
        self.guardUpdate.emit("drive1Cover",not bool(dic["laminar/B738/button_switch/cover_position"][4]))
        self.guardUpdate.emit("drive2Cover",not bool(dic["laminar/B738/button_switch/cover_position"][5]))
        self.guardUpdate.emit("busTransferCover",not bool(dic["laminar/B738/button_switch/cover_position"][6]))

        self.indicatorUpdate.emit("drive1",bool(dic["laminar/B738/annunciator/drive1"][0]))
        self.indicatorUpdate.emit("drive2",bool(dic["laminar/B738/annunciator/drive2"][0]))
        self.indicatorUpdate.emit("standbyPwr",bool(dic["laminar/B738/annunciator/standby_pwr_off"][0]))
        self.indicatorUpdate.emit("source1",bool(dic["laminar/B738/annunciator/source_off1"][0]))
        self.indicatorUpdate.emit("source2",bool(dic["laminar/B738/annunciator/source_off2"][0]))
        self.indicatorUpdate.emit("grp",bool(dic["laminar/B738/annunciator/ground_power_avail"][0]))
        self.indicatorUpdate.emit("bus1",bool(dic["laminar/B738/annunciator/trans_bus_off1"][0]))
        self.indicatorUpdate.emit("bus2",bool(dic["laminar/B738/annunciator/trans_bus_off2"][0]))
        self.indicatorUpdate.emit("gen1",bool(dic["laminar/B738/annunciator/gen_off_bus1"][0]))
        self.indicatorUpdate.emit("gen2",bool(dic["laminar/B738/annunciator/gen_off_bus2"][0]))
        self.indicatorUpdate.emit("apuGen",bool(dic["laminar/B738/annunciator/apu_gen_off_bus"][0]))

        self.swichUpdate.emit("standby_bat",int(dic["laminar/B738/electric/standby_bat_pos"][0])+1)
        self.swichUpdate.emit("cross_tie",int(dic["sim/cockpit2/electrical/cross_tie"][0]))
        self.swichUpdate.emit("batteryOn",int(dic["sim/cockpit/electrical/battery_on"][0]))
        self.swichUpdate.emit("disconnect1",int(dic["laminar/B738/one_way_switch/drive_disconnect1_pos"][0]))
        self.swichUpdate.emit("disconnect2",int(dic["laminar/B738/one_way_switch/drive_disconnect2_pos"][0]))
        self.swichUpdate.emit("ifePassSeat",int(dic["laminar/B738/toggle_switch/ife_pass_seat_pos"][0]))
        self.swichUpdate.emit("cabUtil",int(dic["laminar/B738/toggle_switch/cab_util_pos"][0]))