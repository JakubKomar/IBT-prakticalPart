/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:59:57
  * @ Description: guarded swich alternative 
 */

import QtQuick
import QtQuick.Controls
import QtQuick.Shapes

Item {
    id: guardedSwich
    width: 250
    height: 131
    property alias guard: guard
    property alias swich2stateAlt: swich2stateAlt
    antialiasing: true
    layer.enabled: true
    layer.samples: 8
    property bool guarded:true
    property color guardCol: "#d0282828"
    property color guardBorderCol: "gray"

    signal button1Clicked()
    signal button2Clicked()

    Rectangle {
        id: swich
        color: "#424242"
        radius: 6
        border.width: 0
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 8
        anchors.leftMargin: 40
        anchors.bottomMargin: 8
        anchors.topMargin: 8

        Swich2stateAlt {
            id: swich2stateAlt
            anchors.fill: parent
            turnOnBcCol: Styles.blueDark
            turnOnTextCol: "#ffffff"
            anchors.rightMargin: 2
            anchors.leftMargin: 2
            anchors.bottomMargin: 2
            anchors.topMargin: 2
            togled: true
            turnOffBcBorderCol: "white"
            turnOffTextCol: Styles.blue
            turnOffBcCol: "black"
            turnOnBcBorderCol: Styles.blue
            button1.onClicked: {button1Clicked()}
            button2.onClicked: {button2Clicked()}
        }
    }

    Guard {
        id: guard
        anchors.fill: parent
    }
}



/*##^##
Designer {
    D{i:0;height:131;width:250}D{i:2}D{i:1}D{i:3}
}
##^##*/
