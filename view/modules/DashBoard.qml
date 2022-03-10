import QtQuick
import QtQuick.Controls
import "../componets"
Rectangle {
    id: dashBoard
    width: 1750
    height: 1060
    color: "#000000"

    HorizontalIndicator {
        id: horizontalIndicator
        x: 310
        y: 307
        value: 80.8
        maxValue: 100
        maxKritikValEneb: true
        minKritikValEneb: true
        maxKritikVal: 88.3
        minKritikVal: 6.5
    }

    Rectangle {
        id: rightSide
        x: parent.width/2
        width: parent.width/2
        color: "#00ffffff"
        border.color: "#ffffff"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0

        EngineData {
            id: engineData
            anchors.fill: parent
        }
    }

    Rectangle {
        id: leftSide
        x: 0
        width: parent.width/2
        color: "#00ffffff"
        border.color: "#ffffff"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 0
    }
}


/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:3}D{i:2}D{i:4}
}
##^##*/
