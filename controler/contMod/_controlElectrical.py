# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:43:07
 # @ Description: Controls subcontroler - parsing incoming signals, electricals systems
 '''

import model.libInit as client
from PySide6.QtCore import QObject, Slot

class ControlElectrical(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str)
    def setGuard(self,name):
        if(name=="disconect1"):
            client.client.sendCOMM("laminar/B738/button_switch_cover04")
        elif(name=="disconect2"):
            client.client.sendCOMM("laminar/B738/button_switch_cover05")
        elif(name=="stanbySwich"):
            client.client.sendCOMM("laminar/B738/button_switch_cover03")
        elif(name=="busTransfer"):
            client.client.sendCOMM("laminar/B738/button_switch_cover06")
        elif(name=="batSwich"):
            client.client.sendCOMM("laminar/B738/button_switch_cover02")

    @Slot(str)
    def togle(self,name):
        if(name=="disconect1"):
            client.client.sendCOMM("laminar/B738/one_way_switch/drive_disconnect1")
        elif(name=="disconect1_off"):
            client.client.sendCOMM("laminar/B738/one_way_switch/drive_disconnect1_off")
        elif(name=="disconect2"):
            client.client.sendCOMM("laminar/B738/one_way_switch/drive_disconnect2")
        elif(name=="disconect2_off"):
            client.client.sendCOMM("laminar/B738/one_way_switch/drive_disconnect2_off")
        elif(name=="stanbySwich_off"):
            client.client.sendCOMM("laminar/B738/switch/standby_bat_on")
        elif(name=="stanbySwich"):
            client.client.sendCOMM("laminar/B738/switch/standby_bat_off")
        elif(name=="busTransfer_off"):
            client.client.sendCOMM("sim/electrical/cross_tie_off")
        elif(name=="busTransfer_on"):
            client.client.sendCOMM("sim/electrical/cross_tie_on")
        elif(name=="battery_on"):
            client.client.sendCOMM("sim/electrical/battery_1_on")
            client.client.sendCOMM("sim/electrical/battery_2_on")           
        elif(name=="battery_off"):
            client.client.sendCOMM("sim/electrical/battery_1_off")
            client.client.sendCOMM("sim/electrical/battery_2_off")
        elif(name=="gen1_up"):
            client.client.sendCOMM("laminar/B738/toggle_switch/gen1_up")
        elif(name=="gen1_dn"):
            client.client.sendCOMM("laminar/B738/toggle_switch/gen1_dn")
        elif(name=="apu_gen1_up"):
            client.client.sendCOMM("laminar/B738/toggle_switch/apu_gen1_up")
        elif(name=="apu_gen1_dn"):
            client.client.sendCOMM("laminar/B738/toggle_switch/apu_gen1_dn")
        elif(name=="apu_gen2_up"):
            client.client.sendCOMM("laminar/B738/toggle_switch/apu_gen2_up")
        elif(name=="apu_gen2_dn"):
            client.client.sendCOMM("laminar/B738/toggle_switch/apu_gen2_dn")
        elif(name=="gen2_up"):
            client.client.sendCOMM("laminar/B738/toggle_switch/gen2_up")
        elif(name=="gen2_dn"):
            client.client.sendCOMM("laminar/B738/toggle_switch/gen2_dn")
        elif(name=="gpu_up"):
            client.client.sendCOMM("laminar/B738/toggle_switch/gpu_up")
        elif(name=="gpu_dn"):
            client.client.sendCOMM("laminar/B738/toggle_switch/gpu_dn")
        elif(name=="cab_util"):
            client.client.sendCOMM("laminar/B738/autopilot/cab_util_toggle")
        elif(name=="ife"):
            client.client.sendCOMM("laminar/B738/autopilot/ife_pass_seat_toggle")

