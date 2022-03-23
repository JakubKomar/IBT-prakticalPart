# This Python file uses the following encoding: utf-8
__autor__="Jakub Komárek"



import os
from pathlib import Path
import sys

from model.libInit import estCon

from PySide6.QtGui import QGuiApplication, QIcon
from PySide6.QtQml import QQmlApplicationEngine


from controler.masterControler import MasterControler


if __name__ == "__main__":
    # connect tp xplane 11
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
