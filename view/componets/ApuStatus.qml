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
        level: 2
    }

    states: [
        State {
            name: "RUNNING"
            PropertyChanges {
                target: text2
                color: "#00ff1c"
                text: "RUNNING"
            }
        },
        State {
            name: "FIRE"

            PropertyChanges {
                target: text2
                color: "#ff0000"
                text: "FIRE"
            }
        },
        State {
            name: "SHUTINGDOWN"

            PropertyChanges {
                target: text2
                text: "shutting\ndown"
                color: "orange"
                lineHeight: 0.7
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;height:80;width:140}D{i:1}
}
##^##*/
