import QtQuick
import QtQuick.Controls

Button {
    id:swich2state
    text: qsTr("Swich2state")

    implicitWidth: 150
    implicitHeight: 150
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.leftMargin: 0

    flat: true
    highlighted: false


    property int status: 0


    background: Rectangle {
          color: "black"
          border.color: "#393939"
          border.width: 2
    }
    contentItem: Item{
        id: item1
    }

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
            border.width: 5
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
    D{i:0;formeditorZoom:1.5}D{i:4}D{i:3}
}
##^##*/
