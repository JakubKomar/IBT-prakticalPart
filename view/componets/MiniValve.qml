/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:26:12
  * @ Description: mini valve graphic repr. for schema uses
 */

import QtQuick

Item {
    id:valve
    implicitHeight: 40
    implicitWidth: 40
    property double open: 0
    property bool directView:false
    state:
        if(directView)
            ""
        else if(open==1)
            "transmit"
        else if(open>0)
            "on"
        else
            ""
    width: 30
    height: 30
    layer.samples: 8
    layer.enabled: true
    antialiasing: true

    Rectangle {
        id: circle
        color: "black"
        radius: width/2
        border.color: "gray"
        border.width: 2

        anchors.fill: parent
        clip: true
        transform: Rotation{
            id: rotate
            angle: directView? open*90:internalAngle
            origin.x: circle.width/2
            origin.y: circle.height/2
            property int internalAngle:0
        }
        Rectangle {
            id: pipe
            width: 8
            height: 30
            color: "#393939"
            radius: 0
            border.color: "#00ffffff"
            border.width: 1
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 0
            clip: false
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    states: [
        State {
            name: "on"
            PropertyChanges {
                target:rotate
                internalAngle: 90
            }
        },
        State {
            name: "transmit"
            PropertyChanges {
                target:rotate
                internalAngle: 45
            }
        },
        State {
            name: ""
            PropertyChanges {
                target:rotate
                internalAngle: 0
            }
        }

    ]


}

/*##^##
Designer {
    D{i:0;height:30;width:30}D{i:3}D{i:1}
}
##^##*/
