# This Python file uses the following encoding: utf-8

from typing import Dict
from PySide6.QtCore import  Slot, Signal, QThread


from .rendMod._fuelRender import RenderFuel
from .rendMod._bleedRender import RenderBleed
from .rendMod._tempRender import TempRender
from .rendMod._doorsRender import DoorRender
from .rendMod._electricalRender import ElectricalRender

from .rendMod._antiIceRender import AntiIceRender
from .rendMod._dashBoardRender import DashBoardRender
from .rendMod._engineRender import EngineRender
from .rendMod._hydraulicRender import HydraulicRender
from .rendMod._ligtsRender import LightsRender
from .rendMod._renderWarnings import WarnigsRender
from .rendMod._engineDataRender import EngineDataRender
from .rendMod._fuelDialsRender import FuelDialsRender

import model.libInit as client

class MainRanderControler(QThread):

    def __init__(self):
        QThread.__init__(self)

        self.subcontrolers = {"RenderFuel": RenderFuel(),
            "RenderBleed" : RenderBleed(),
            "RenderTemp" : TempRender(),
            "RenderDoor" : DoorRender(),
            "RenderElectrical" : ElectricalRender(),
            "AntiIceRender" : AntiIceRender(),
            "DashBoardRender" : DashBoardRender(),
            "EngineRender" : EngineRender(),
            "HydraulicRender" : HydraulicRender(),
            "LightsRender" : LightsRender(),
            "WarningsRender":WarnigsRender(),
            "EngineDataRender":EngineDataRender(),
            "FuelDialsRender":FuelDialsRender()
        }

    setConnStatus = Signal(bool)

    def run(self):
        while True:
            try:
                self.loop()
                self.setConnStatus.emit(False)
            except WindowsError:
                self.setConnStatus.emit(True)
            except Exception as EX:
                print(EX)

    refList=[]
    poisonRefList=True
    moduleSelector = 0
    moduleSelectorPicker = 0

    def loop(self):
        if self.poisonRefList:
            self.actualizateRefList()

        serverList = client.client.getDREFs(self.refList)
        dictionary = {self.refList[i]: serverList[i] for i in range(len(self.refList))}

        self.sendRefs(dictionary)

    @Slot(int)
    def setModuleSelector(self, modID):
        self.moduleSelectorPicker = modID
        self.poisonRefList=True

    def actualizateRefList(self):
        self.moduleSelector=self.moduleSelectorPicker
        self.refList=[]

        self.refList.extend(self.subcontrolers["WarningsRender"].requestRef())

        if(self.moduleSelector == 0):
            self.refList.extend(self.subcontrolers["DashBoardRender"].requestRef())
            self.refList.extend(self.subcontrolers["EngineDataRender"].requestRef())
            self.refList.extend(self.subcontrolers["FuelDialsRender"].requestRef())
        elif(self.moduleSelector == 1):
            self.refList.extend(self.subcontrolers["RenderFuel"].requestRef())
            self.refList.extend(self.subcontrolers["FuelDialsRender"].requestRef())
        elif(self.moduleSelector == 2):
            self.refList.extend(self.subcontrolers["RenderBleed"].requestRef())
        elif(self.moduleSelector == 3):
            self.refList.extend(self.subcontrolers["RenderTemp"].requestRef())
        elif(self.moduleSelector == 4):
            self.refList.extend(self.subcontrolers["RenderDoor"].requestRef())
        elif(self.moduleSelector == 5):
            self.refList.extend(self.subcontrolers["RenderElectrical"].requestRef())
        elif(self.moduleSelector == 6):
            self.refList.extend(self.subcontrolers["AntiIceRender"].requestRef())
        elif(self.moduleSelector == 7):
            self.refList.extend(self.subcontrolers["LightsRender"].requestRef())
        elif(self.moduleSelector == 8):
            self.refList.extend(self.subcontrolers["EngineRender"].requestRef())
            self.refList.extend(self.subcontrolers["EngineDataRender"].requestRef())
        elif(self.moduleSelector == 9):
            self.refList.extend(self.subcontrolers["HydraulicRender"].requestRef())
            self.refList.extend(self.subcontrolers["DashBoardRender"].requestRef())

        self.refList = list(set(self.refList))
        self.poisonRefList=False

    def sendRefs(self, dictionary):
        self.subcontrolers["WarningsRender"].sendRef(dictionary)
        
        if(self.moduleSelector == 0):
            self.subcontrolers["DashBoardRender"].sendRef(dictionary)
            self.subcontrolers["EngineDataRender"].sendRef(dictionary)
            self.subcontrolers["FuelDialsRender"].sendRef(dictionary)
        elif(self.moduleSelector == 1):
            self.subcontrolers["RenderFuel"].sendRef(dictionary)
            self.subcontrolers["FuelDialsRender"].sendRef(dictionary)
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
            self.subcontrolers["EngineDataRender"].sendRef(dictionary)
        elif(self.moduleSelector == 9):
            self.subcontrolers["HydraulicRender"].sendRef(dictionary)
            self.subcontrolers["DashBoardRender"].sendRef(dictionary)




