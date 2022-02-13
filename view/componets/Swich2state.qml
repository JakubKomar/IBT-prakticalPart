import QtQuick
import QtQuick.Controls

Rectangle {
    id:swich2state
    color: "#000000"
    border.color: "#484848"
    border.width: 3

    implicitWidth: 150
    implicitHeight: 150

    property string description: "Desc\nMultiline"

    Column {
        id: column
        anchors.fill: parent

        Rectangle {
            id: status
            height: 50
            color: "#00ae5b5b"
            border.color: "#313131"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Text {
                id: statusText
                color: "#acacac"
                text: qsTr("OFF")
                anchors.fill: parent
                font.pixelSize: 47
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                minimumPointSize: 13
                font.family: "Tahoma"
                font.bold: true
            }
        }


        Rectangle {
            id: rectangle1
            height: 100
            color: "#00ffffff"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Text {
                id: text2
                color: "#ffffff"
                text: qsTr(description)
                anchors.fill: parent
                font.pixelSize: 28
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
                font.bold: true
            }
        }

    }
    states: [
        State {
            name: "on"

            PropertyChanges {
                target: statusText
                color: "#02ff00"
                text: qsTr("ON")
            }
        }
    ]





}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33}D{i:3}D{i:2}D{i:5}D{i:4}D{i:1}
}
##^##*/
