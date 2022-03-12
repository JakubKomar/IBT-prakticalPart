# This Python file uses the following encoding: utf-8

from controler.mainRenderControler import MainRanderControler
from controler.mainComandControler import MainComandControler


class MasterControler():

    def __init__(self, engine):
        self.MainRanderControler = MainRanderControler()
        self.MainRanderControler.start()

        self.MainComandControler = MainComandControler()

        for key, value in self.MainRanderControler.subcontrolers.items():
            engine.rootContext().setContextProperty(key, value)

        for key, value in self.MainComandControler.subcontrolers.items():
            engine.rootContext().setContextProperty(key, value)

        # print(self.MainRanderControler.subcontrolers.keys(), self.MainComandControler.subcontrolers.keys())

        engine.rootContext().setContextProperty("MainRanderControler", self.MainRanderControler)



