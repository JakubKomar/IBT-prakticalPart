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
    property color guardBorderCol: "white"
    signal unGuard()
    signal guard()
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
            anchors.rightMargin: 2
            anchors.leftMargin: 2
            anchors.bottomMargin: 2
            anchors.topMargin: 2
            togled: true
            turnOffBcBorderCol: "#747474"
            turnOffTextCol: "#adadad"
            turnOffBcCol: "#3d3d3d"
            turnOnBcBorderCol: "#00b9ff"
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
    D{i:0;formeditorZoom:3}D{i:2}D{i:1}D{i:5}D{i:10}D{i:4}D{i:14}D{i:3}D{i:17}D{i:24}
D{i:26}D{i:28}D{i:30}D{i:32}D{i:16}D{i:34}D{i:15}
}
##^##*/