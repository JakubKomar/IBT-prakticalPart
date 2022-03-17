import QtQuick
import QtQuick.Controls

Rectangle {
    id:swich2state
    color: "#000000"
    border.color: "#484848"
    border.width: 3
    property alias text2: text2
    property alias statusText: statusText

    implicitWidth: 150
    implicitHeight: 150

    property string description: "Desc\nMultiline"
    property string onText:"ON"
    property string offText:"OFF"
    property int textWidthStatus:47
    property int textWidthDescription:28
    property bool togled:false

    property color onColor: "#02ff00"
    property color offColor: "#acacac"

    state:togled?"on":"off"
    property int position: togled?1:0
    Rectangle {
        id: status
        height: 50
        color: "#00ae5b5b"
        border.color: "#484848"
        border.width: 0
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0

        TextCust {
            id: statusText
            color: offColor
            text: offText
            level:2
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            minimumPointSize: 13
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 50
        color: "#00ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 50
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        anchors.leftMargin: 0

        TextCust{
            id: text2
            color: "#ffffff"
            text: qsTr(description)
            anchors.fill: parent
            level:2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: -7
            Rectangle {
                id: rectangle
                y: 8
                height: 2
                color: "#484848"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }
        }
    }
    states: [
        State {
            name: "on"

            PropertyChanges {
                target: statusText
                color: onColor
                text: onText
            }
        }
    ]





}

/*##^##
Designer {
    D{i:0;height:140;width:140}D{i:2}D{i:1}D{i:5}D{i:4}D{i:3}
}
##^##*/
