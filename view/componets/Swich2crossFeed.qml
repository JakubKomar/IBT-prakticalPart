import QtQuick
import QtQuick.Controls

Rectangle {
    id:swich2state
    //text: qsTr("Swich2state")

    implicitWidth: 150
    implicitHeight: 150
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    color: "#000000"
    border.color: "#484848"
    border.width: 1


    Rectangle {
        id: circle
        color: "#ffffff"
        border.color: "black"
        border.width: 1
        anchors.fill: parent
        radius: width*0.5

        Rectangle {
            id: rectangle
            y: 0
            width: 34
            height: 150
            color: "#666666"
            border.width: 2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        transform: Rotation{
            id: rotate
            angle: 0
            origin.x: circle.width/2
            origin.y: circle.height/2
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
    D{i:0;formeditorZoom:2;height:150;width:150}D{i:2}D{i:1}
}
##^##*/
