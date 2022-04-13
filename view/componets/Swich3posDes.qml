/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:38:14
  * @ Description: swich3 position whith border and description
 */

import QtQuick

Item {
    id:swich3posDes
    height: 130
    width: 300
    property string description: "Description"
    property int descriptionTextW: 34
    property alias textPos1: swich3pos.textPos1
    property alias textPos2: swich3pos.textPos2
    property alias textPos3: swich3pos.textPos3
    property alias textWidth: swich3pos.textWidth

    property alias butt1: swich3pos.button1
    property alias butt2: swich3pos.button2
    property alias butt3: swich3pos.button3

    property alias position:swich3pos.position
    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 7
        border.color: "gray"
        border.width: 1
        anchors.fill: parent
    }

    TextCust {
        id: text1
        level:2
        height: 54
        color: Styles.blueDark
        text: description
        anchors.left: parent.left
        anchors.right: parent.right
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
        anchors.leftMargin: 0
    }

    Swich3pos {
        id: swich3pos
        x: 3
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 50
        anchors.bottomMargin: 1
        radiusButt: 2
        anchors.rightMargin: 1
        anchors.leftMargin: 1
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:1.33;height:150;width:300}D{i:1}D{i:2}D{i:3}
}
##^##*/
