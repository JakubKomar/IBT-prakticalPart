# This Python file uses the following encoding: utf-8

from PySide6.QtCore import QObject, Slot, Signal, QTimer

from .rendMod._fuelRender import RenderFuel
import time
import model.libInit as client

class MainRanderControler(QObject):

    def __init__(self, fps=20):
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
        except WindowsError as EX:
            self.setConnStatus.emit(True)
            print(EX)
        except Exception as EX:
            ...
            print(EX)

    def loop(self):
        refList=[]

        if(self.moduleSelector == 0):
            ...
        else:
            refList.extend(self.subcontrolers["RenderFuel"].requestRef())

        refList = list(set(refList))
        serverList = client.client.getDREFs(refList)

        dictionary = {refList[i]: serverList[i] for i in range(len(refList))}


        if(self.moduleSelector == 0):
            ...
        else:
            self.subcontrolers["RenderFuel"].sendRef(dictionary)


    @Slot(int)
    def setModuleSelector(self, modID):
        self.moduleSelector = modID


