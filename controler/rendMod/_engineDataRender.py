# This Python file uses the following encoding: utf-8

import model.libInit as client
from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class EngineDataRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/engine/indicators/N1_percent_1",
            "laminar/B738/engine/indicators/N1_percent_2",
            "laminar/B738/engine/indicators/N2_percent_1",
            "laminar/B738/engine/indicators/N2_percent_2",
            "laminar/B738/engine/eng1_egt",
            "laminar/B738/engine/eng2_egt",
            "laminar/B738/engine/eng1_oil_press",
            "laminar/B738/engine/eng2_oil_press",
            "sim/cockpit2/engine/indicators/fuel_flow_kg_sec",
            "sim/flightmodel/engine/ENGN_oil_quan",
            "sim/cockpit2/engine/indicators/oil_temperature_deg_C",
            "laminar/B738/engine/eng1_req_n1",
            "laminar/B738/engine/eng2_req_n1",
            "laminar/B738/systems/motoring1",
            "laminar/B738/systems/motoring2"

            "laminar/B738/fuel_flow_used1",
            "laminar/B738/fuel_flow_used2,",

            "laminar/B738/engine/start_valve1",
            "laminar/B738/engine/start_valve2",
            "sim/cockpit/warnings/annunciators/oil_pressure_low",#not tested
            "laminar/B738/engine/eng1_oil_filter_bypass",
            "laminar/B738/engine/eng2_oil_filter_bypass",
            "sim/cockpit2/annunciators/fuel_pressure_low",#not tested
            "sim/cockpit2/annunciators/N1_low",#not tested
            


        ]
  
    setIndicator=Signal(str, float)
    setAnnunciator=Signal(str, float)

    def sendRef(self, dic):
        self.setIndicator.emit("n1L",dic["laminar/B738/engine/indicators/N1_percent_1"][0])
        self.setIndicator.emit("n1R",dic["laminar/B738/engine/indicators/N1_percent_2"][0])
        self.setIndicator.emit("n1regL",dic["laminar/B738/engine/eng1_req_n1"][0]*100)
        self.setIndicator.emit("n1regR",dic["laminar/B738/engine/eng2_req_n1"][0]*100)
        self.setIndicator.emit("egtL",dic["laminar/B738/engine/eng1_egt"][0])
        self.setIndicator.emit("egtR",dic["laminar/B738/engine/eng2_egt"][0])
        self.setIndicator.emit("n2L",dic["laminar/B738/engine/indicators/N2_percent_1"][0])
        self.setIndicator.emit("n2R",dic["laminar/B738/engine/indicators/N2_percent_2"][0])
        self.setIndicator.emit("oilTempL",dic["sim/cockpit2/engine/indicators/oil_temperature_deg_C"][0])
        self.setIndicator.emit("oilTempR",dic["sim/cockpit2/engine/indicators/oil_temperature_deg_C"][1])
        self.setIndicator.emit("oilPresL",dic["laminar/B738/engine/eng1_oil_press"][0])
        self.setIndicator.emit("oilPresR",dic["laminar/B738/engine/eng2_oil_press"][0])
        self.setIndicator.emit("ffL",dic["sim/cockpit2/engine/indicators/fuel_flow_kg_sec"][0])
        self.setIndicator.emit("ffR",dic["sim/cockpit2/engine/indicators/fuel_flow_kg_sec"][1])
        self.setIndicator.emit("oilQtyL",dic["sim/flightmodel/engine/ENGN_oil_quan"][0]*20)
        self.setIndicator.emit("oilQtyR",dic["sim/flightmodel/engine/ENGN_oil_quan"][1]*20)
        self.setIndicator.emit("vibR",1.6)
        self.setIndicator.emit("vibL",1.6)

        self.setAnnunciator.emit("startValveL",dic["laminar/B738/engine/start_valve1"][0])
        self.setAnnunciator.emit("startValveR",dic["laminar/B738/engine/start_valve2"][0])
        self.setAnnunciator.emit("oilLowL",dic["sim/cockpit/warnings/annunciators/oil_pressure_low"][0])
        self.setAnnunciator.emit("oilLowR",dic["sim/cockpit/warnings/annunciators/oil_pressure_low"][1])
        self.setAnnunciator.emit("oilFilterByL",dic["laminar/B738/engine/eng1_oil_filter_bypass"][0])
        self.setAnnunciator.emit("oilFilterByR",dic["laminar/B738/engine/eng2_oil_filter_bypass"][0])
        self.setAnnunciator.emit("lowFuelPresureL",dic["sim/cockpit2/annunciators/fuel_pressure_low"][0])
        self.setAnnunciator.emit("lowFuelPresureR",dic["sim/cockpit2/annunciators/fuel_pressure_low"][1])
        self.setAnnunciator.emit("trustL",0)
        self.setAnnunciator.emit("trustR",0)

       
