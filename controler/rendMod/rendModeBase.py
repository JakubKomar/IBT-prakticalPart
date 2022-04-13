# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:24:24
 # @ Description: base class for render subcontrolers
 '''

class RendModeBase:
    referList = []

    def requestRef(self):
        return self.referList

    def sendRef(self,dic={}):
        pass

    def render(self):
        pass