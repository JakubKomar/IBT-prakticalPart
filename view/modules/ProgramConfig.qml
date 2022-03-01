import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:tempControl
    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"

    Connections{
        target:ControlSetings
    }

    Rectangle {
        id: rectangle
        width: 387
        height: 364
        color: "#ffffff"
        radius: 9
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        Label {
            id: label1
            y: 18
            text: qsTr("Connection to Xplane 11 setings")
            anchors.left: parent.left
            anchors.right: parent.right
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 18
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        Column {
            id: column
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: -5
            anchors.topMargin: 56
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Rectangle {
                id: rectangle2
                height: 59
                color: "#00ffffff"
                border.color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Label {
                    id: label
                    y: 13
                    text: qsTr("Destination IP:")
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    font.pointSize: 17
                }

                Rectangle {
                    id: rectangle1
                    x: 212
                    y: 9
                    width: 161
                    height: 44
                    color: "#ffffff"
                    radius: 9
                    border.width: 2

                    TextInput {
                        id: destIp
                        text: qsTr("127.0.0.1")
                        anchors.fill: parent
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 0
                        anchors.bottomMargin: 0
                        anchors.leftMargin: 0
                        anchors.topMargin: 0
                    }
                }
            }

            Rectangle {
                id: rectangle3
                height: 59
                color: "#00ffffff"
                border.color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                Label {
                    id: label2
                    y: 13
                    text: qsTr("Destination Port:")
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    font.pointSize: 17
                }

                Rectangle {
                    id: rectangle4
                    x: 212
                    y: 9
                    width: 161
                    height: 44
                    color: "#ffffff"
                    radius: 9
                    border.width: 2
                    TextInput {
                        id: destPort
                        text: qsTr("49009")
                        anchors.fill: parent
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                    }
                }
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            Rectangle {
                id: rectangle5
                height: 59
                color: "#00ffffff"
                border.color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                Label {
                    id: label3
                    y: 13
                    text: qsTr("Source Port:")
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    font.pointSize: 17
                }

                Rectangle {
                    id: rectangle6
                    x: 212
                    y: 9
                    width: 161
                    height: 44
                    color: "#ffffff"
                    radius: 9
                    border.width: 2
                    TextInput {
                        id: portSource
                        text: qsTr("0")
                        anchors.fill: parent
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                    }
                }
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            Rectangle {
                id: rectangle7
                height: 59
                color: "#00ffffff"
                border.color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                Label {
                    id: label4
                    y: 13
                    text: qsTr("TimeOut (ms)")
                    anchors.left: parent.left
                    anchors.leftMargin: 5
                    font.pointSize: 17
                }

                Rectangle {
                    id: rectangle8
                    x: 212
                    y: 9
                    width: 161
                    height: 44
                    color: "#ffffff"
                    radius: 9
                    border.width: 2
                    TextInput {
                        id: timeout
                        text: qsTr("100")
                        anchors.fill: parent
                        font.pixelSize: 30
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                    }
                }
                anchors.rightMargin: 0
                anchors.leftMargin: 0
            }

            Button {
                id: set
                width: 147
                height: 56
                text: qsTr("Set")
                font.pointSize: 20
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked:{
                    ControlSetings.setConnection(destIp.text,destPort.text,portSource.text,timeout.text)
                }
            }
        }
    }

}







/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:3}D{i:4}D{i:2}
}
##^##*/
