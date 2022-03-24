# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:42:41
 # @ Description: Controls subcontroler - parsing incoming signals, engine module
 '''

import model.libInit as client
from PySide6.QtCore import QObject, Slot

class ControlEngine(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(int,int)
    def setApuSwich(self, value, actualState):

        if value==actualState:
            return

        comand="laminar/B738/spring_toggle_switch/APU_start_pos_dn"
        if(value<actualState):
            comand="laminar/B738/spring_toggle_switch/APU_start_pos_up"

        if value==2:
            for i in range(5):
                client.client.sendCOMM(comand)
        else:
            client.client.sendCOMM(comand)
    
    @Slot(int, int)
    def setMixure(self, engine, state):
        client.client.sendDREF("laminar/B738/engine/mixture_ratio"+str(engine), state)

    @Slot(int, bool)
    def setIgnition(self, engine, right):
        if right:
            client.client.sendCOMM("laminar/B738/knob/eng"+str(engine)+"_start_right")
        else:
            client.client.sendCOMM("laminar/B738/knob/eng"+str(engine)+"_start_left")


    @Slot(int)
    def setIgnitionSpliter(self, state):
        client.client.sendDREF("laminar/B738/toggle_switch/eng_start_source", state)

