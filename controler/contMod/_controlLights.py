# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:41:19
 # @ Description: Controls subcontroler - parsing incoming signals, lights module
 '''

import model.libInit as client
from PySide6.QtCore import QObject, Slot

class ControlLights(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str)
    def swichTogle(self,name,actualState=True):
        if name=="taxi":
            client.client.sendCOMM("laminar/B738/toggle_switch/taxi_light_brigh_toggle")
        elif name=="anitcollision":
            client.client.sendCOMM("sim/lights/beacon_lights_toggle")
        elif name=="landingL":
            client.client.sendCOMM("laminar/B738/switch/land_lights_left")
        elif name=="landingR":
            client.client.sendCOMM("laminar/B738/switch/land_lights_right")

    @Slot(str, bool)
    def swichSet(self, name, actualState):
        if name=="runwayL":
            client.client.sendCOMM("laminar/B738/switch/rwy_light_left_off" if actualState==True else "laminar/B738/switch/rwy_light_left_on")
        elif name=="runwayR":
            client.client.sendCOMM("laminar/B738/switch/rwy_light_right_off" if actualState==True else "laminar/B738/switch/rwy_light_right_on")       
        elif name=="runway":
            client.client.sendCOMM("laminar/B738/switch/rwy_light_left_off" if actualState==True else "laminar/B738/switch/rwy_light_left_on")
            client.client.sendCOMM("laminar/B738/switch/rwy_light_right_off" if actualState==True else "laminar/B738/switch/rwy_light_right_on")
        elif name=="logo":
            client.client.sendCOMM("laminar/B738/switch/logo_light_off" if actualState==True else "laminar/B738/switch/logo_light_on")
        elif name=="wing":
            client.client.sendCOMM("laminar/B738/switch/wing_light_off" if actualState==True else "laminar/B738/switch/wing_light_on")
        elif name=="wheelWell":
            client.client.sendCOMM("laminar/B738/switch/wheel_light_off" if actualState==True else "laminar/B738/switch/wheel_light_on")
        elif name=="landing":
            client.client.sendCOMM("laminar/B738/switch/land_lights_left")
            client.client.sendCOMM("laminar/B738/switch/land_lights_right")

    @Slot(int, int)
    def positionLightSet(self, val, actualState):
        if(val==actualState):
            return
        
        direction="down" if val<actualState else "up"
        comandNumber=abs(actualState-val)

        for i in range(comandNumber):
            client.client.sendCOMM("laminar/B738/toggle_switch/position_light_"+direction)

    @Slot()
    def emerGuardSet(self):
        client.client.sendCOMM("laminar/B738/button_switch_cover09")

    @Slot(int, int)
    def positionEmer(self, val, actualState):
        if(val==actualState):
            return
        
        direction="dn" if val>actualState else "up"
        comandNumber=abs(actualState-val)

        for i in range(comandNumber):
            client.client.sendCOMM("laminar/B738/toggle_switch/emer_exit_lights_"+direction)