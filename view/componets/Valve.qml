/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:35:03
  * @ Description: valve graphic representation - used in schemas
 */

import QtQuick

Item {
    id:valve
    implicitHeight: 40
    implicitWidth: 40
    property bool open: false
    state: open?"on":""
    width: 70
    height: 70
    layer.samples: 8
    layer.enabled: true
    antialiasing: true

    Rectangle {
        id: circle
        color: "black"
        radius: width/2
        border.color: "gray"
        border.width: 1
        anchors.fill: parent
        clip: true
        transform: Rotation{
            id: rotate
            angle: 0
            origin.x: circle.width/2
            origin.y: circle.height/2
        }
        Rectangle {
            id: pipe
            width: 22
            height: 71
            color: "#393939"
            radius: 5
            border.color: "#ffffff"
            border.width: 2
            anchors.verticalCenter: parent.verticalCenter
            clip: false
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: pipeSub
                x: 2
                y: -2
                width: 20
                height: 73
                color: "#808080"
                radius: 5
                anchors.verticalCenter: parent.verticalCenter
                anchors.verticalCenterOffset: 1
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }
    states: [
        State {
            name: "on"
            PropertyChanges {
                target:rotate
                angle: 90
            }
        }
    ]


}

/*##^##
Designer {
    D{i:0;formeditorZoom:8;height:70;width:70}D{i:4}D{i:3}D{i:1}
}
##^##*/
