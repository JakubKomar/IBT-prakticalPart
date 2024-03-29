# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:21:54
 # @ Description: main comand controler - inicializating all comand subcontrolers
 '''

from PySide6.QtCore import QObject

from .contMod._controlFuel import ControlFuel
from .contMod._controlBleed import ControlBleed
from .contMod._controlTemp import ControlTemp
from .contMod._controlElectrical import ControlElectrical

from .contMod._controlAntiIce import ControlAntiIce
from .contMod._controlDashBoard import ControlDashBoard
from .contMod._controlDoors import ControlDoors
from .contMod._controlEngine import ControlEngine
from .contMod._controlLights import ControlLights
from .contMod._controlHydraulic import ControlHydraulic

from .contMod._controlSetings import ControlSetings

class MainComandControler(QObject):

    def __init__(self):
        QObject.__init__(self)

        self.subcontrolers = {"ControlFuel": ControlFuel(),
            "ControlBleed": ControlBleed(),
            "ControlTemp": ControlTemp(),
            "ControlSetings": ControlSetings(),
            "ControlElectrical": ControlElectrical(),
            "ControlAntiIce": ControlAntiIce(),
            "ControlDashBoard": ControlDashBoard(),
            "ControlDoors": ControlDoors(),
            "ControlEngine": ControlEngine(),
            "ControlLights": ControlLights(),
            "ControlHydraulic": ControlHydraulic(),
        }
