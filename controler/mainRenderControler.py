# This Python file uses the following encoding: utf-8

from PySide6.QtCore import QObject, Slot, QTimer

from .rendMod._fuelRender import RenderFuel


class MainRanderControler(QObject):

    def __init__(self, fps=27):
        QObject.__init__(self)

        self.moduleSelector = 0

        self.subcontrolers = {"RenderFuel": RenderFuel()}
        # timer init
        self.timer = QTimer()
        self.timer.timeout.connect(lambda: self.loop())
        self.timer.start(int(1000/fps))

    def loop(self):
        if(self.moduleSelector == 0):
            self.subcontrolers["RenderFuel"].render()
        else:
            self.subcontrolers["RenderFuel"].render()

    @Slot(int)
    def setModuleSelector(self, modID):
        self.moduleSelector = modID
