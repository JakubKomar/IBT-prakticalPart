# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:40:49
 # @ Description: Controls subcontroler - parsing incoming signals, setings of program
 '''

import model.libInit as client
from PySide6.QtCore import QObject, Slot

class ControlSetings(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str, str, str, str)
    def setConnection(self, xpHost, xpPort, port, timeout):
        client.client.close()
        client.estCon(xpHost, int(xpPort), int(port), int(timeout))


