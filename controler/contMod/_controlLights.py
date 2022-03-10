# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Slot

class ControlLights(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str)
    def swichTogle(self,name):
        if name=="taxi":
            client.client.sendCOMM("laminar/B738/toggle_switch/taxi_light_brigh_toggle")
        elif name=="anitcollision":
            client.client.sendCOMM("sim/lights/beacon_lights_toggle")

    @Slot(str, int)
    def swichSet(self, name, actualState):
        prevState=client.client.getDREF("sim/cockpit2/switches/generic_lights_switch")
        prevState=list(prevState)
        if name=="landingL":
            client.client.sendDREF("laminar/B738/switch/land_lights_left_pos",float(actualState+1)%2)
        elif name=="landingR":
            client.client.sendDREF("laminar/B738/switch/land_lights_right_pos",float(actualState+1)%2)
        elif name=="runwayL":
            prevState[2]=float((prevState[2]+1)%2)
            client.client.sendDREF("sim/cockpit2/switches/generic_lights_switch",prevState)
        elif name=="runwayR":
            prevState[3]=float(prevState[3]+1)%2
            client.client.sendDREF("sim/cockpit2/switches/generic_lights_switch",prevState)
        elif name=="logo":
            prevState[1]=float(prevState[1]+1)%2
            client.client.sendDREF("sim/cockpit2/switches/generic_lights_switch",prevState)
        elif name=="wing":
            prevState[0]=float(prevState[0]+1)%2
            client.client.sendDREF("sim/cockpit2/switches/generic_lights_switch",prevState)
        elif name=="wheelWell":
            prevState[5]=float(prevState[5]+1)%2
            client.client.sendDREF("sim/cockpit2/switches/generic_lights_switch",prevState)

        