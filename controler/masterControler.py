# This Python file uses the following encoding: utf-8

from controler.mainRenderControler import MainRanderControler
from controler.mainComandControler import MainComandControler


class MasterControler():

    def __init__(self, engine):
        self.MainRanderControler = MainRanderControler()
        self.MainComandControler = MainComandControler()

        for key, value in self.MainRanderControler.subcontrolers.items():
            engine.rootContext().setContextProperty(key, value)
            print(key)

        for key, value in self.MainComandControler.subcontrolers.items():
            engine.rootContext().setContextProperty(key, value)
            print(key)

        engine.rootContext().setContextProperty("MainRanderControler", self.MainRanderControler)
