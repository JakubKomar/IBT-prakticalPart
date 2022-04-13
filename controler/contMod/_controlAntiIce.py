# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:45:23
 # @ Description: Controls subcontroler - parsing incoming signals, antiice modules
 '''

import model.libInit as client
from PySide6.QtCore import QObject, Slot


class ControlAntiIce(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str)
    def swichTogle(self,name):
        if name=="sideWindR":
            client.client.sendCOMM("laminar/B738/toggle_switch/window_heat_r_side")
        elif name=="sideWindL":
            client.client.sendCOMM("laminar/B738/toggle_switch/window_heat_l_side")
        elif name=="fwdWindR":
            client.client.sendCOMM("laminar/B738/toggle_switch/window_heat_r_fwd")
        elif name=="fwdWindL":
            client.client.sendCOMM("laminar/B738/toggle_switch/window_heat_l_fwd")
        elif name=="probeL":
            client.client.sendCOMM("laminar/B738/toggle_switch/capt_probes_pos")
        elif name=="probeR":
            client.client.sendCOMM("laminar/B738/toggle_switch/fo_probes_pos")
        elif name=="tatTest":
            client.client.sendCOMM("laminar/B738/push_button/tat_test")
        elif name=="wingAntiIce":
            client.client.sendCOMM("laminar/B738/toggle_switch/wing_heat")
        elif name=="engLAntiIce":
            client.client.sendCOMM("laminar/B738/toggle_switch/eng1_heat")
        elif name=="engRAntiIce":
            client.client.sendCOMM("laminar/B738/toggle_switch/eng2_heat")
        elif name=="ovhtTest":
            client.client.sendDREF("laminar/B738/toggle_switch/window_ovht_test",-1.0)
        elif name=="pwrTest":
            client.client.sendDREF("laminar/B738/toggle_switch/window_ovht_test",1.0)
        elif name=="testReset":
            client.client.sendDREF("laminar/B738/toggle_switch/window_ovht_test",0.0)

        
    
