# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:39:01
 # @ Description: Controls subcontroler - parsing incoming signals, temrature module
 '''

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
