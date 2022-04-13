/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:26:58
  * @ Description: double pump
 */

import QtQuick

Rectangle {
    id:pumpCombo
    height: 205
    color: "#00ffffff"

    implicitWidth: 320
    implicitHeight: 200
    clip: true

    property bool pumpLeftTogle: false
    property bool pumpLeftWarning: false

    property bool pumpRightTogle: false
    property bool pumpRightWarning: false
    Swich2stateWarning{
        id:leftPump
        x: 170
        y: 0
        togled: pumpLeftTogle
        warningTogle: pumpLeftWarning

    }
    Swich2stateWarning{
        id:rightPump
        x: 0
        y: 0
        togled: pumpRightTogle
        warningTogle: pumpRightWarning
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:1.66;height:200;width:320}D{i:1}D{i:2}
}
##^##*/
