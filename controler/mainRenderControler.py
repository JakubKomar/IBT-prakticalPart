# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:04:06
 # @ Description: Main render controler - inicializate all render subControlers and start render loop
 '''
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
import logging

class MainRanderControler(QThread):

    def __init__(self):
        QThread.__init__(self)

        #subcontrolers tuple
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

    #signal for indicating connection between simulator
    setConnStatus = Signal(bool)

    # main render loop 
    def run(self):
        while True:
            try:
                self.loop()
                self.setConnStatus.emit(False)
            except WindowsError: # connection exeption
                self.setConnStatus.emit(True)
            except Exception as EX: #all exeption are chatched, render loop must run
                logging.warning(EX)

    # reflist that is sended to simulator
    refList=[]

    # true - reflist is not up to date - colection of new refs
    poisonRefList=True
    # selector of modules
    moduleSelector = 0
    # user controled selector of modules
    moduleSelectorPicker = 0

    def loop(self):
        if self.poisonRefList:
            self.actualizateRefList()

        serverList = client.client.getDREFs(self.refList)
        dictionary = {self.refList[i]: serverList[i] for i in range(len(self.refList))}

        self.sendRefs(dictionary)

    # module selector slot
    @Slot(int)
    def setModuleSelector(self, modID):
        self.moduleSelectorPicker = modID
        self.poisonRefList=True

    # thread terminating function
    @Slot()
    def shutDown(self):
        client.client.close()
        self.terminate()

    # geting new refs after module change event
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

    # after simulator deliver refs, refs are sended to propriet render modules
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