# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Slot


class ControlFuel(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str)
    def toglePump(self,str):
        client.client.sendCOMM("laminar/B738/toggle_switch/fuel_pump_"+str)

    @Slot(bool)
    def togleCrossFeed(self,actualState):
        if actualState:
            client.client.sendCOMM("laminar/B738/toggle_switch/crossfeed_valve_off")
        else:
            client.client.sendCOMM("laminar/B738/toggle_switch/crossfeed_valve_on")

    
    
