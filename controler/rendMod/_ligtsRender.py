# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class LightsRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/air/trim_air_pos",

        ]
  
    example=Signal(bool)

    def sendRef(self, dic):
        self.example.emit(bool(dic["laminar/B738/air/trim_air_pos"][0]))

       
