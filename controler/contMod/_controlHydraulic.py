# This Python file uses the following encoding: utf-8

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
