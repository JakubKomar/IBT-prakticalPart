# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal


class RenderFuel(QObject):

    def __init__(self):
        QObject.__init__(self)

    setPumpState = Signal(int)

    def render(self):
        self.setPumpState.emit(client.client.getDREF("laminar/B738/toggle_switch/hydro_pumps2_pos")[0])
