# This Python file uses the following encoding: utf-8

from typing import Dict
from PySide6.QtCore import QObject, Slot, Signal, QTimer

from .rendMod._fuelRender import RenderFuel
from .rendMod._bleedRender import RenderBleed
from .rendMod._tempRender import TempRender
from .rendMod._doorsRender import DoorRender
from .rendMod._electricalRender import ElectricalRender

from .rendMod._antiIceRender import AntiIceRender
from .rendMod._dashBoardRender import DashBoardRender
from .rendMod._engineRender import EngineRender
from .rendMod._flyControlRender import FLyControlRender
from .rendMod._ligtsRender import LightsRender
from .rendMod._renderWarnings import WarnigsRender
import time
import model.libInit as client

class MainRanderControler(QObject):

    def __init__(self, fps=20):
        QObject.__init__(self)

        self.moduleSelector = 0
        self.subcontrolers = {"RenderFuel": RenderFuel(),
            "RenderBleed" : RenderBleed(),
            "RenderTemp" : TempRender(),
            "RenderDoor" : DoorRender(),
            "RenderElectrical" : ElectricalRender(),
            "AntiIceRender" : AntiIceRender(),
            "DashBoardRender" : DashBoardRender(),
            "EngineRender" : EngineRender(),
            "FLyControlRender" : FLyControlRender(),
            "LightsRender" : LightsRender(),
            "WarningsRender":WarnigsRender()
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
        # except Exception as EX:
        #    ...
        #    print(EX)

    lastData=[]

    def loop(self):
        refList=[]

        refList.extend(self.subcontrolers["WarningsRender"].requestRef())

        if(self.moduleSelector == 0):
            refList.extend(self.subcontrolers["DashBoardRender"].requestRef())
        elif(self.moduleSelector == 1):
            refList.extend(self.subcontrolers["RenderFuel"].requestRef())
        elif(self.moduleSelector == 2):
            refList.extend(self.subcontrolers["RenderBleed"].requestRef())
        elif(self.moduleSelector == 3):
            refList.extend(self.subcontrolers["RenderTemp"].requestRef())
        elif(self.moduleSelector == 4):
            refList.extend(self.subcontrolers["RenderDoor"].requestRef())
        elif(self.moduleSelector == 5):
            refList.extend(self.subcontrolers["RenderElectrical"].requestRef())
        elif(self.moduleSelector == 6):
            refList.extend(self.subcontrolers["AntiIceRender"].requestRef())
        elif(self.moduleSelector == 7):
            refList.extend(self.subcontrolers["LightsRender"].requestRef())
        elif(self.moduleSelector == 8):
            refList.extend(self.subcontrolers["EngineRender"].requestRef())
        elif(self.moduleSelector == 9):
            refList.extend(self.subcontrolers["FLyControlRender"].requestRef())

        refList = list(set(refList))
        serverList = client.client.getDREFs(refList)

        dictionary = {refList[i]: serverList[i] for i in range(len(refList))}

        self.subcontrolers["WarningsRender"].sendRef(dictionary)
        
        if(self.moduleSelector == 0):
            self.subcontrolers["DashBoardRender"].sendRef(dictionary)
        elif(self.moduleSelector == 1):
            self.subcontrolers["RenderFuel"].sendRef(dictionary)
        elif(self.moduleSelector == 2):
            self.subcontrolers["RenderBleed"].sendRef(dictionary)
        elif(self.moduleSelector == 3):
            self.subcontrolers["RenderTemp"].sendRef(dictionary)
        elif(self.moduleSelector == 4):
            self.subcontrolers["RenderDoor"].sendRef(dictionary)
        elif(self.moduleSelector == 5):
            self.subcontrolers["RenderElectrical"].sendRef(dictionary)
        elif(self.moduleSelector == 6):
            self.subcontrolers["AntiIceRender"].sendRef(dictionary)
        elif(self.moduleSelector == 7):
            self.subcontrolers["LightsRender"].sendRef(dictionary)
        elif(self.moduleSelector == 8):
            self.subcontrolers["EngineRender"].sendRef(dictionary)
        elif(self.moduleSelector == 9):
            self.subcontrolers["FLyControlRender"].sendRef(dictionary)

    @Slot(int)
    def setModuleSelector(self, modID):
        self.moduleSelector = modID


