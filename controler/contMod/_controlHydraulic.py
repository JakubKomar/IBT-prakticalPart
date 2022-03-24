# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:41:34
 # @ Description: Controls subcontroler - parsing incoming signals, hydraulic module
 '''

import model.libInit as client
from PySide6.QtCore import QObject, Slot

class ControlHydraulic(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str)
    def togleSwich(self, name):

        if name=="hydrPump1":
            client.client.sendCOMM("laminar/B738/toggle_switch/hydro_pumps1")
        elif name=="hydrPump2":
            client.client.sendCOMM("laminar/B738/toggle_switch/hydro_pumps2")
        elif name=="electroPump1":
            client.client.sendCOMM("laminar/B738/toggle_switch/electric_hydro_pumps1")
        elif name=="electroPump2":
            client.client.sendCOMM("laminar/B738/toggle_switch/electric_hydro_pumps2")
        elif name=="autobrakeDn":
            client.client.sendCOMM("laminar/B738/knob/autobrake_dn")
        elif name=="autobrakeUp":
            client.client.sendCOMM("laminar/B738/knob/autobrake_up")
