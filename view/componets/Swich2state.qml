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

           Label {
               id: label
               text: qsTr("Label")
               anchors.fill: parent
           }
    }

    Rectangle {
        id: actualStatus
        x: 0
        y: 0
        width: 150
        height: 60
        color: "#000000"
        border.color: "#393939"
        border.width: 2

        Label {
            id: stateLabel
            color: "#ffffff"
            text: qsTr("OFF")
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.styleName: "tučné"
            font.family: "Verdana"
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 33
        }
    }

    Label {
        id: swichDescription
        y: 60
        height: 90
        color: "#ffffff"
        text: qsTr("DES\nPOPIS")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        textFormat: Text.PlainText
        font.wordSpacing: 0
        font.bold: true
        font.pointSize: 27
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        anchors.bottomMargin: 0
    }
    states: [
        State {
            name: "on"

            PropertyChanges {
            }

            PropertyChanges {
                target: stateLabel
                color: "#02ff00"
                text: qsTr("ON")
            }
        }
    ]
}

/*##^##
Designer {
    D{i:0;formeditorZoom:2}D{i:5}D{i:4}D{i:6}D{i:3}
}
##^##*/
