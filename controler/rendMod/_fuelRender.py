# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal


class RenderFuel(QObject):

    def __init__(self):
        QObject.__init__(self)

    setButt = Signal(int)

    def render(self):
        self.setButt.emit(1)
