# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:43:42
 # @ Description: Controls subcontroler - parsing incoming signals, doors status panel
 '''

import model.libInit as client
from PySide6.QtCore import QObject, Slot

class ControlDoors(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str, int)
    def setSwich(self, name, pos):
        if name=="noSmoking":
            client.client.sendDREF("laminar/B738/toggle_switch/no_smoking_pos", pos)
        elif name=="paxLight":
            if pos==0:
                client.client.sendCOMM("laminar/B738/cabin/pax_white_bright")
            elif pos==1:
                client.client.sendCOMM("laminar/B738/cabin/pax_white_medium")
            elif pos==2:
                client.client.sendCOMM("laminar/B738/cabin/pax_to_landing")
            elif pos==3:
                client.client.sendCOMM("laminar/B738/cabin/pax_cruise")
            elif pos==4:
                client.client.sendCOMM("laminar/B738/cabin/pax_night_sleep")
        elif name=="entryLight":
            if pos==0:
                client.client.sendCOMM("laminar/B738/cabin/entry_white_bright")
            elif pos==1:
                client.client.sendCOMM("laminar/B738/cabin/entry_white_medium")

    @Slot(int, int)
    def setSeatBealts(self, pos, prevPos):
        if(prevPos==pos):
            return
        comandNum= abs(prevPos-pos)

        dir = "up" if pos>prevPos else "dn"

        for i in range(comandNum):
            client.client.sendCOMM("laminar/B738/toggle_switch/seatbelt_sign_"+dir)
