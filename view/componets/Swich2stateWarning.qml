/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 21:06:05
  * @ Description: swich whit warning annunciator
 */

import QtQuick
import QtQuick.Controls

Button {
    id:swich2stateWarning
    height: 196
    property alias warningIndicator: warningIndicator
    property alias swich2state: swich2state

    implicitWidth: 150
    implicitHeight: 200

    property alias togled: swich2state.togled
    property double warningTogle: 0
    property string description:"dawdwa"

    background: Rectangle {
        color: "#ffffff"
        border.color: "#ffffff"
        border.width: 2
    }

    Swich2state {
        id: swich2state
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: 61
        anchors.left: parent.left
        anchors.right: parent.right
        description:swich2stateWarning.description
    }

    WarningIndicator {
        id: warningIndicator
        y: 127
        height: 65
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: -1
        textHeight: 28
        warText: "LOW\nPRESSURE"
        status: warningTogle
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3;height:196;width:150}D{i:2}D{i:3}
}
##^##*/
