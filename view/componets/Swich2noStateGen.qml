import QtQuick
import QtQuick.Controls

Item {
    id:swich2noStateGen
    width: 150
    height: 200
    property alias infoIndicator: infoIndicator
    property alias button2: button2
    property alias button1: button1

    property color bcCol:"white"
    property color bcBorderCol:"#484848"
    property color textCol:bcBorderCol

    property string text1:"OFF"
    property string text2:"ON"

    Rectangle {
        id: rectangle
        color: "#4e4e4e"
        radius: 9
        border.color: "#515151"
        anchors.fill: parent

        Column {
            id: column
            anchors.fill: parent

            Button {
                id: button1
                width: parent.width
                height: parent.height/3
                background: Rectangle{
                    color: bcCol
                    border.color:  bcBorderCol
                    border.width: 2
                    radius: 8
                    Text {
                        id: button1Text
                        text: text1
                        color: textCol
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 30
                    }
                }
            }

            InfoIndicator {
                id: infoIndicator
                anchors.left: parent.left
                anchors.right: parent.right
                description: "GEN 1\nOFFBUS"
                anchors.leftMargin: 0
                anchors.rightMargin: 0
            }

            Button {
                id: button2
                width: parent.width
                height: parent.height/3

                background: Rectangle{
                    color: bcCol
                    radius: 8
                    border.color: bcBorderCol
                    border.width: 2
                    Text {
                        id: button2Text
                        text: text2
                        color: textCol
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 30
                    }
                }
            }

        }
    }

}



/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:3}D{i:6}D{i:7}D{i:2}D{i:1}
}
##^##*/