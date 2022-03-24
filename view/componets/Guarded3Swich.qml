/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:21:53
  * @ Description: guarder 3 position swich
 */

import QtQuick

Item {
    id:guarded3Swich
    width: 346
    height: 111
    property alias guard: guard
    property alias swich3pos: swich3pos
    Swich3pos {
        id: swich3pos
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 41
        anchors.bottomMargin: 11
        anchors.topMargin: 9
    }

    Guard {
        id: guard
        anchors.fill: parent
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:1}D{i:2}
}
##^##*/
