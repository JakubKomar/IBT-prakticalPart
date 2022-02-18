# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Slot


class ControlBleed(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str)
    def togleBleedSource(self, sourceName):
        if sourceName == "l":
            client.client.sendCOMM("laminar/B738/toggle_switch/bleed_air_1")
        elif sourceName == "r":
            client.client.sendCOMM("laminar/B738/toggle_switch/bleed_air_2")
        elif sourceName == "apu":
            client.client.sendCOMM("laminar/B738/toggle_switch/bleed_air_apu")

    @Slot(str)
    def togleRecircFan(self, sourceName):
        if sourceName == "l":
            client.client.sendCOMM("laminar/B738/toggle_switch/l_recirc_fan")
        elif sourceName == "r":
            client.client.sendCOMM("laminar/B738/toggle_switch/r_recirc_fan")

    @Slot(str, int)
    def toglePack(self, sourceName, position):
        if sourceName == "l":
            client.client.sendDREF("laminar/B738/air/l_pack_pos", position)
        elif sourceName == "r":
            client.client.sendDREF("laminar/B738/air/r_pack_pos", position)

    @Slot(int)
    def togleIsoValve(self, position):
        client.client.sendDREF("laminar/B738/air/isolation_valve_pos", position)

    @Slot()
    def tripButtTest(self):
        client.client.sendCOMM("laminar/B738/push_button/duct_ovht_test")

    @Slot()
    def bleedTripReset(self):
        client.client.sendCOMM("laminar/B738/push_button/bleed_trip_reset")
