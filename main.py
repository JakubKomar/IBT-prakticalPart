# This Python file uses the following encoding: utf-8
'''
 # @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
 # @ Author: Jakub Komárek
 # @ Licence: MIT
 # @ Modified by: Jakub Komárek
 # @ Modified time: 2022-03-24 02:09:03
 # @ Description: Main file of program - inicializate main modules and run main loop of Qt
 '''

import os
from pathlib import Path
import sys

from model.libInit import estCon

from PySide6.QtGui import QGuiApplication, QIcon
from PySide6.QtQml import QQmlApplicationEngine

from controler.masterControler import MasterControler


if __name__ == "__main__":
    # connect to xplane 11
    estCon()
    # app init
    app = QGuiApplication()
    engine = QQmlApplicationEngine()

    # init backend
    msControler = MasterControler(engine)
    # qlm file load
    app.setWindowIcon(QIcon("view/pic/icon.png"))

    engine.load(os.fspath(Path(__file__).resolve().parent / "view/main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
