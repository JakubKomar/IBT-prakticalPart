# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 01:59:53
 # @ Description: main controler part of program - init all subcomponents of controler part of program
 '''

from controler.mainRenderControler import MainRanderControler
from controler.mainComandControler import MainComandControler


class MasterControler():

    def __init__(self, engine):
        self.MainRanderControler = MainRanderControler()
        self.MainRanderControler.start()

        self.MainComandControler = MainComandControler()

        # init render part and connect it to view part
        for key, value in self.MainRanderControler.subcontrolers.items(): 
            engine.rootContext().setContextProperty(key, value)

        # init comand part and connect it to view part
        for key, value in self.MainComandControler.subcontrolers.items():
            engine.rootContext().setContextProperty(key, value)

        engine.rootContext().setContextProperty("MainRanderControler", self.MainRanderControler)



