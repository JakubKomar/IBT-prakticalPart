# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Slot


class ControlSetings(QObject):

    def __init__(self):
        QObject.__init__(self)

    @Slot(str,str,str,str)
    def setConnection(self,xpHost, xpPort, port, timeout):
        client.client.close()
        client.estCon(xpHost, int(xpPort), int(port), int(timeout))


