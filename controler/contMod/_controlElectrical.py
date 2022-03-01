# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Slot


class ControlElectrical(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot()
    def trimAir(self):
        client.client.sendCOMM("laminar/B738/toggle_switch/trim_air")
