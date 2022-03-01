# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Slot


class ControlTemp(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot()
    def trimAir(self):
        client.client.sendCOMM("laminar/B738/toggle_switch/trim_air")

    @Slot(str, float)
    def setRheostat(self, name, pozition):
        client.client.sendDREF("laminar/B738/air/"+name+"/rheostat",pozition)

    @Slot(str)
    def coolingSwich(self, name):
        client.client.sendCOMM("laminar/B738/toggle_switch/eq_cool_"+name)
