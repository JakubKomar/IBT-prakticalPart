# This Python file uses the following encoding: utf-8

from PySide6.QtCore import QObject, Slot, Signal, QTimer

from .rendMod._fuelRender import RenderFuel
from .rendMod._bleedRender import RenderBleed
from .rendMod._tempRender import TempRender
from .rendMod._doorsRender import DoorRender

import time
import model.libInit as client

class MainRanderControler(QObject):

    def __init__(self, fps=20):
        QObject.__init__(self)

        self.moduleSelector = 0
        self.subcontrolers = {"RenderFuel": RenderFuel(),
            "RenderBleed": RenderBleed(),
            "RenderTemp": TempRender(),
            "RenderDoor": DoorRender()
        }
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
        #except Exception as EX:
        #    ...
        #    print(EX)

    def loop(self):
        refList=[]

        if(self.moduleSelector == 0):
            ...
        elif(self.moduleSelector == 1):
            refList.extend(self.subcontrolers["RenderFuel"].requestRef())
        elif(self.moduleSelector == 2):
            refList.extend(self.subcontrolers["RenderBleed"].requestRef())
        elif(self.moduleSelector == 3):
            refList.extend(self.subcontrolers["RenderTemp"].requestRef())
        elif(self.moduleSelector == 4):
            refList.extend(self.subcontrolers["RenderDoor"].requestRef())

        refList = list(set(refList))
        serverList = client.client.getDREFs(refList)

        dictionary = {refList[i]: serverList[i] for i in range(len(refList))}


        if(self.moduleSelector == 0):
            ...
        elif(self.moduleSelector == 1):
            self.subcontrolers["RenderFuel"].sendRef(dictionary)
        elif(self.moduleSelector == 2):
            self.subcontrolers["RenderBleed"].sendRef(dictionary)
        elif(self.moduleSelector == 3):
            self.subcontrolers["RenderTemp"].sendRef(dictionary)
        elif(self.moduleSelector == 4):
            self.subcontrolers["RenderDoor"].sendRef(dictionary)


    @Slot(int)
    def setModuleSelector(self, modID):
        self.moduleSelector = modID


