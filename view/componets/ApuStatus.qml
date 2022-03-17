import QtQuick 2.0

Rectangle {
    id: apuStatus
    width: 311
    height: 66
    color: "#000000"
    border.color: "#484848"
    border.width: 3
    property bool running: false
    property bool fire: false
    property int swichOnOff: 0
    state:{
        if(fire)
            "FIRE"
        else if(running&&swichOnOff==0)
            "SHUTINGDOWN"
        else if(running)
            "RUNNING"
        else
            ""
    }

    TextCust {
        id: text2
        color: "#b6b6b6"
        text: "OFF"
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        level: 1
        anchors.leftMargin: 90
    }

    TextCust {
        id: text1
        width: 91
        color: "#009bff"
        text: qsTr("STATUS")
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        level: 2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
        anchors.topMargin: 0

        Rectangle {
            id: rectangle
            x: 90
            y: 3
            width: 1
            color: "#333333"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 3
            anchors.bottomMargin: 3
        }
    }

    states: [
        State {
            name: "RUNNING"
            PropertyChanges {
                target: text2
                color: "#00ff1c"
                text: "RUNNING"
                font.pixelSize: 42
            }
        },
        State {
            name: "FIRE"

            PropertyChanges {
                target: text2
                color: "#ff0000"
                text: "FIRE"
                font.pixelSize: 58
            }
        },
        State {
            name: "SHUTINGDOWN"

            PropertyChanges {
                target: text2
                text: "shutting\ndown"
                color: "orange"
                font.pixelSize: 28
                lineHeight: 0.7
            }

            PropertyChanges {
                target: text1
                text: qsTr("STATUS:")
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:66;width:311}D{i:1}D{i:3}D{i:2}
}
##^##*/
