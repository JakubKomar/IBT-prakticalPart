# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Slot


class ControlFuel(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot()
    def toglePump(self):
        gear_dref = "laminar/B738/toggle_switch/hydro_pumps"
        client.client.sendCOMM(gear_dref)
