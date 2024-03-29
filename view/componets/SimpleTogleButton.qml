/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-29 01:16:04
  * @ Description: simple clickeble 2 state button
 */

import QtQuick
import QtQuick.Controls

Button {
    id:simpleTogleButton
    x: 0
    width: 145
    height: 66
    property color onBackColor: "white"
    property color onBackBorderColor: "blue"

    property color offBackColor: "black"
    property color offBackBorderColor: "white"

    property bool togled:false

    background:
        Rectangle{
            anchors.fill: parent
            color: offBackColor
            border.color: offBackBorderColor
            border.width: 2


    }

    TextCust {
        id: text1
        x: 62
        y: 25
        text: qsTr("Text")
        level:3
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:3}
}
##^##*/
