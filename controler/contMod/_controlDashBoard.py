# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:44:30
 # @ Description: Controls subcontroler - parsing incoming signals, dashboard module
 '''

import model.libInit as client
from PySide6.QtCore import QObject, Slot

class ControlDashBoard(QObject):

    def __init__(self):
        QObject.__init__(self)
