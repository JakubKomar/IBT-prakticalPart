# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Slot


class ControlDoors(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot()
    def example(self):
        client.client.sendCOMM("laminar/B738/toggle_switch/eq_cool_")
