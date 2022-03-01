# This Python file uses the following encoding: utf-8

from PySide6.QtCore import QObject

from .contMod._controlFuel import ControlFuel
from .contMod._controlBleed import ControlBleed
from .contMod._controlTemp import ControlTemp
from .contMod._controlSetings import ControlSetings
from .contMod._controlElectrical import ControlElectrical
class MainComandControler(QObject):

    def __init__(self):
        QObject.__init__(self)

        self.subcontrolers = {"ControlFuel": ControlFuel(),
            "ControlBleed": ControlBleed(),
            "ControlTemp": ControlTemp(),
            "ControlSetings": ControlSetings(),
            "ControlElectrical": ControlElectrical()
        }
