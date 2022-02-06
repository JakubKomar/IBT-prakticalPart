# This Python file uses the following encoding: utf-8
import os
from pathlib import Path
import sys
import model.libInit as client


from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine

from PySide6.QtCore import QObject, Slot, Signal


class MainWindow(QObject):
    var = 1

    def __init__(self):
        QObject.__init__(self)

    getName = Signal(int)

    @Slot(int)
    def chengeSomething(self, val):
        gear_dref = "sim/cockpit/switches/gear_handle_status"
        if(val == 1):
            print("Extend gear")
            client.client.sendDREF(gear_dref, 1)
        else:
            print("Retact gear")
            client.client.sendDREF(gear_dref, 0)



if __name__ == "__main__":
    # connect tp xplane 11
    client.estCon()

    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()

    # context
    main = MainWindow()
    engine.rootContext().setContextProperty("backend", main)

    # qlm load
    engine.load(os.fspath(Path(__file__).resolve().parent / "view/main.qml"))
    if not engine.rootObjects():
        sys.exit(-1)
    sys.exit(app.exec())
