# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:38:31
 # @ Description: Render subcontroler - anti ice system module
 '''

from PySide6.QtCore import QObject, Signal
from .rendModeBase import RendModeBase

class AntiIceRender(QObject,RendModeBase):

    def __init__(self):
        QObject.__init__(self)
        self.referList = ["laminar/B738/annunciator/window_heat_l_fwd",
            "laminar/B738/annunciator/window_heat_l_side",
            "laminar/B738/annunciator/window_heat_r_fwd",
            "laminar/B738/annunciator/window_heat_r_side",
            "laminar/B738/annunciator/window_heat_ovht_lf",
            "laminar/B738/annunciator/window_heat_ovht_ls",
            "laminar/B738/annunciator/window_heat_ovht_rf",
            "laminar/B738/annunciator/window_heat_ovht_rs",
            "laminar/B738/annunciator/window_heat_r_side",
            "laminar/B738/ice/window_heat_l_side_pos",
            "laminar/B738/ice/window_heat_r_fwd_pos",
            "laminar/B738/ice/window_heat_l_fwd_pos",
            "laminar/B738/ice/window_heat_r_side_pos",

            "laminar/B738/annunciator/capt_aoa_off",
            "laminar/B738/annunciator/capt_pitot_off",
            "laminar/B738/annunciator/fo_aoa_off",
            "laminar/B738/annunciator/fo_pitot_off",

            "sim/cockpit/warnings/annunciators/pitot_heat_off",
            "sim/cockpit2/annunciators/pitot_heat",

            "laminar/B738/toggle_switch/capt_probes_pos",
            "laminar/B738/toggle_switch/fo_probes_pos",

            "laminar/B738/ice/wing_heat_pos",
            "laminar/B738/ice/eng1_heat_pos",
            "laminar/B738/ice/eng2_heat_pos",
            "laminar/B738/annunciator/cowl_ice_on_0",
            "laminar/B738/annunciator/cowl_ice_on_1",
            "laminar/B738/annunciator/wing_ice_on_L",
            "laminar/B738/annunciator/wing_ice_on_R",
            "laminar/B738/annunciator/cowl_ice_0",
            "laminar/B738/annunciator/cowl_ice_1",

            "sim/cockpit/pressure/bleed_air_on"
        ]
  
    setAnnunciator=Signal(str,float)
    setSwich=Signal(str,bool)
    setImg=Signal(str, bool)

    def sendRef(self, dic):
        self.setAnnunciator.emit("lHeatFwd",dic["laminar/B738/annunciator/window_heat_l_fwd"][0])
        self.setAnnunciator.emit("lHeatSide",dic["laminar/B738/annunciator/window_heat_l_side"][0])
        self.setAnnunciator.emit("rHeatFwd",dic["laminar/B738/annunciator/window_heat_r_fwd"][0])
        self.setAnnunciator.emit("rHeatSide",dic["laminar/B738/annunciator/window_heat_r_side"][0])
        self.setAnnunciator.emit("ovhtLf",dic["laminar/B738/annunciator/window_heat_ovht_lf"][0])
        self.setAnnunciator.emit("ovhtLs",dic["laminar/B738/annunciator/window_heat_ovht_ls"][0])
        self.setAnnunciator.emit("ovhtRf",dic["laminar/B738/annunciator/window_heat_ovht_rf"][0])
        self.setAnnunciator.emit("ovhtRs",dic["laminar/B738/annunciator/window_heat_ovht_rs"][0])

        self.setAnnunciator.emit("capt_pitot_off",dic["laminar/B738/annunciator/capt_pitot_off"][0])
        self.setAnnunciator.emit("capt_alpha",dic["laminar/B738/annunciator/capt_aoa_off"][0])
        self.setAnnunciator.emit("capt_elev",dic["laminar/B738/annunciator/capt_aoa_off"][0])
        self.setAnnunciator.emit("capt_temp",dic["laminar/B738/annunciator/capt_aoa_off"][0])

        self.setAnnunciator.emit("fo_pitot_off",dic["laminar/B738/annunciator/fo_pitot_off"][0])   
        self.setAnnunciator.emit("fo_alpha",dic["laminar/B738/annunciator/fo_aoa_off"][0])
        self.setAnnunciator.emit("fo_elev",dic["laminar/B738/annunciator/fo_aoa_off"][0])
        self.setAnnunciator.emit("fo_aux",dic["laminar/B738/annunciator/fo_aoa_off"][0])

        self.setAnnunciator.emit("cowl_ice_on_0", dic["laminar/B738/annunciator/cowl_ice_on_0"][0])
        self.setAnnunciator.emit("cowl_ice_on_1", dic["laminar/B738/annunciator/cowl_ice_on_1"][0])
        self.setAnnunciator.emit("wing_ice_on_L", dic["laminar/B738/annunciator/wing_ice_on_L"][0])
        self.setAnnunciator.emit("wing_ice_on_R", dic["laminar/B738/annunciator/wing_ice_on_R"][0])
        self.setAnnunciator.emit("cowl_ice_0", dic["laminar/B738/annunciator/cowl_ice_0"][0])
        self.setAnnunciator.emit("cowl_ice_1", dic["laminar/B738/annunciator/cowl_ice_1"][0])

        self.setSwich.emit("sideL", int(dic["laminar/B738/ice/window_heat_l_side_pos"][0]))
        self.setSwich.emit("fwdL", int(dic["laminar/B738/ice/window_heat_l_fwd_pos"][0]))
        self.setSwich.emit("fwdR", int(dic["laminar/B738/ice/window_heat_r_fwd_pos"][0]))
        self.setSwich.emit("sideR", int(dic["laminar/B738/ice/window_heat_r_side_pos"][0]))

        self.setSwich.emit("heatL", bool(dic["laminar/B738/toggle_switch/capt_probes_pos"][0]))
        self.setSwich.emit("heatR", bool(dic["laminar/B738/toggle_switch/fo_probes_pos"][0]))
        
        self.setSwich.emit("wingHeat", int(dic["laminar/B738/ice/wing_heat_pos"][0]))
        self.setSwich.emit("engHeatL", int(dic["laminar/B738/ice/eng1_heat_pos"][0]))
        self.setSwich.emit("engHeatR", int(dic["laminar/B738/ice/eng2_heat_pos"][0]))

        self.setImg.emit("center", bool(dic["sim/cockpit/pressure/bleed_air_on"][0]))
        self.setImg.emit("wingL", bool(dic["sim/cockpit/pressure/bleed_air_on"][0]) and 
            bool(dic["laminar/B738/annunciator/wing_ice_on_L"][0]>0 and 
            dic["laminar/B738/annunciator/wing_ice_on_L"][0]<1)
        )
        self.setImg.emit("wingR", bool(dic["sim/cockpit/pressure/bleed_air_on"][0]) and
            bool(dic["laminar/B738/annunciator/wing_ice_on_R"][0]>0 and
            dic["laminar/B738/annunciator/wing_ice_on_R"][0]<1)
        )
        self.setImg.emit("eng1", bool(dic["sim/cockpit/pressure/bleed_air_on"][0]) and
            bool(dic["laminar/B738/annunciator/cowl_ice_on_0"][0]>0 and
            dic["laminar/B738/annunciator/cowl_ice_on_0"][0]<1)
        )
        self.setImg.emit("eng2", bool(dic["sim/cockpit/pressure/bleed_air_on"][0]) and 
            bool(dic["laminar/B738/annunciator/cowl_ice_on_1"][0]>0 and 
            dic["laminar/B738/annunciator/cowl_ice_on_1"][0]<1)
        )