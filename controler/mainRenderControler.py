# This Python file uses the following encoding: utf-8

from PySide6.QtCore import QObject, Slot, Signal, QTimer

from .rendMod._fuelRender import RenderFuel

import logging
class MainRanderControler(QObject):

    def __init__(self, fps=30):
        QObject.__init__(self)

        self.moduleSelector = 0
        self.subcontrolers = {"RenderFuel": RenderFuel()}
        # timer init
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.renderLoop())
        self.timer.start(int(1000/fps))

    setConnStatus = Signal(bool)

    def renderLoop(self):
        try:
            self.loop()
            self.setConnStatus.emit(False)
        except WindowsError:
            self.setConnStatus.emit(True)
        except Exception:
            ...

    def loop(self):
        if(self.moduleSelector == 0):
            self.subcontrolers["RenderFuel"].render()
        else:
            self.subcontrolers["RenderFuel"].render()

    @Slot(int)
    def setModuleSelector(self, modID):
        self.moduleSelector = modID


