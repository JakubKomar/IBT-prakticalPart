# This Python file uses the following encoding: utf-8

from setuptools import Command
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

    @Slot(int, int)
    def setIgnition(self, engine, value):
        if value==0:
            client.client.sendCOMM("laminar/B738/rotary/eng"+str(engine)+"_start_grd")
        elif value==1:
            client.client.sendCOMM("laminar/B738/rotary/eng"+str(engine)+"_start_off")
        elif value==2:
            client.client.sendCOMM("laminar/B738/rotary/eng"+str(engine)+"_start_cont")
        elif value==3:
            client.client.sendCOMM("laminar/B738/rotary/eng"+str(engine)+"_start_flt")


    @Slot(int)
    def setIgnitionSpliter(self, state):
        client.client.sendDREF("laminar/B738/toggle_switch/eng_start_source", state)

