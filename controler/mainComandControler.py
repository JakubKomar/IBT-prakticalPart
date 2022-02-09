# This Python file uses the following encoding: utf-8

from PySide6.QtCore import QObject

from .contMod._controlFuel import ControlFuel


class MainComandControler(QObject):

    def __init__(self):
        QObject.__init__(self)

        self.subcontrolers = {"ControlFuel": ControlFuel()}
