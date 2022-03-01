import QtQuick
import QtQuick.Controls

Item {
    id: swich3pos
    height: 100
    width: 300
    property color activeBackGroundCol: "white"
    property color backGroundCol: "#414141"
    property color activeBorderCol: "#00b9ff"
    property color borderCol: "white"
    property color textCol: "white"
    property color activeTextCol: "#00b9ff"
    property int radiusButt:4

    property int position: 0
    property string textPos1:"OFF"
    property string textPos2:"AUTO"
    property string textPos3:"ON"
    property int textWidth:36

    property alias butt1: button1
    property alias butt2: button2
    property alias butt3: button3
    Row {
        id: row
        anchors.fill: parent
        bottomPadding: 0
        rightPadding: 0
        leftPadding: 0
        spacing: 0

        Button {
            id: button1
            width: parent.width/3
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            background: Rectangle{
                color: position==0?activeBackGroundCol:backGroundCol
                radius: radiusButt
                border.color: position==0?activeBorderCol:borderCol
                border.width: 3
                anchors.fill: parent

            }

            Text {
                id: text1
                color: position==0?activeTextCol:textCol
                text:textPos1
                anchors.fill: parent
                font.pixelSize: textWidth
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"

            }
        }

        Button {
            id: button2
            width: parent.width/3
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 0

            background: Rectangle{
                radius: radiusButt
                border.width: 3
                color: position==1?activeBackGroundCol:backGroundCol
                border.color: position==1?activeBorderCol:borderCol
                anchors.fill: parent
            }

            Text {
                id: text2
                color: position==1?activeTextCol:textCol
                text: textPos2
                anchors.fill: parent
                font.pixelSize: textWidth
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
            }
        }

        Button {
            id: button3
            width: parent.width/3
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 0

            background: Rectangle{
                radius: radiusButt
                border.width: 3
                color: position==2?activeBackGroundCol:backGroundCol
                border.color: position==2?activeBorderCol:borderCol
                anchors.fill: parent
            }

            Text {
                id: text3
                color: position==2?activeTextCol:textCol
                text: textPos3
                anchors.fill: parent
                font.pixelSize: textWidth
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.family: "Verdana"
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:4}D{i:2}D{i:7}D{i:5}D{i:10}D{i:8}D{i:1}
}
##^##*/
