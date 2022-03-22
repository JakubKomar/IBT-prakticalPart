import QtQuick

Item {
    id:valve
    implicitHeight: 40
    implicitWidth: 40
    property double open: 0
    state:
        if(open==1)
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
            angle: 0
            origin.x: circle.width/2
            origin.y: circle.height/2
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
                angle: 90
            }
        },
        State {
            name: "transmit"
            PropertyChanges {
                target:rotate
                angle: 45
            }
        }

    ]


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5;height:30;width:30}D{i:3}D{i:1}
}
##^##*/
