/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:39:46
  * @ Description: swich 2 state alt
 */

import QtQuick
import QtQuick.Controls

Item {
    id:swich2stateAlt
    width: 180
    height: 90
    property alias button2: button2
    property alias button1: button1
    property bool togled:false

    property color turnOnBcCol:"white"
    property color turnOnBcBorderCol:"#00b9ff"
    property color turnOnTextCol: swich2stateAlt.turnOnBcBorderCol

    property color turnOffBcCol:"gray"
    property color turnOffBcBorderCol:"white"
    property color turnOffTextCol:swich2stateAlt.turnOffBcBorderCol

    property string textOn:"ON"
    property string textOff:"OFF"
    property int textHeight: 25
    Button {
        id: button1
        x: 0
        y: 0
        width: parent.width/2
        height: parent.height
        background: Rectangle{
            color: !togled?turnOnBcCol:turnOffBcCol
            border.color: !togled?turnOnBcBorderCol:turnOffBcBorderCol
            border.width: 2
            radius: 8
            TextCust {
                id: button1Text
                text: textOff
                color: !togled?turnOnTextCol:turnOffTextCol
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level:2
            }
        }
    }

    Button {
        id: button2
        x: parent.width/2
        y: 0
        width: parent.width/2
        height: parent.height

        background: Rectangle{
            color: togled?turnOnBcCol:turnOffBcCol
            radius: 8
            border.color: togled?turnOnBcBorderCol:turnOffBcBorderCol
            border.width: 2
            TextCust {
                id: button2Text
                text: textOn
                color: togled?turnOnTextCol:turnOffTextCol
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level:2
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:1}D{i:4}
}
##^##*/
