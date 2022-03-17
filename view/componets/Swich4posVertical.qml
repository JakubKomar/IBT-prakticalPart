import QtQuick
import QtQuick.Controls

Item {
    id: swich3pos
    height: 350
    property alias button4: button4
    property alias button3: button3
    property alias button2: button2
    property alias button1: button1
    width: 123
    property color activeBackGroundCol: "white"
    property color backGroundCol: "#414141"
    property color activeBorderCol: "#00b9ff"
    property color borderCol: "white"
    property color textCol: "white"
    property color activeTextCol: "#00b9ff"
    property int radiusButt:4

    property int position: 0
    property string textPos1:"GRD"
    property string textPos2:"AUTO"
    property string textPos3:"CONT"
    property string textPos4:"FLT"
    property int textWidth:36

    Column {
        id: row
        anchors.fill: parent


        Button {
            id: button1
            width: parent.width
            height:parent.height/4
            background: Rectangle{
                color: position==0?activeBackGroundCol:backGroundCol
                radius: radiusButt
                border.color: position==0?activeBorderCol:borderCol
                border.width: 3
                anchors.fill: parent

            }

            TextCust {
                id: text1
                color: position==0?activeTextCol:textCol
                text:textPos1
                anchors.fill: parent
                level:2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter

            }
        }

        Button {
            id: button2
            width: parent.width
            height:parent.height/4

            background: Rectangle{
                radius: radiusButt
                border.width: 3
                color: position==1?activeBackGroundCol:backGroundCol
                border.color: position==1?activeBorderCol:borderCol
                anchors.fill: parent
            }

            TextCust {
                id: text2
                color: position==1?activeTextCol:textCol
                text: textPos2
                anchors.fill: parent
                level:2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }

        Button {
            id: button3
            width: parent.width
            height:parent.height/4

            background: Rectangle{
                radius: radiusButt
                border.width: 3
                color: position==2?activeBackGroundCol:backGroundCol
                border.color: position==2?activeBorderCol:borderCol
                anchors.fill: parent
            }

            TextCust {
                id: text3
                color: position==2?activeTextCol:textCol
                text: textPos3
                anchors.fill: parent
                level:2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
        Button {
            id: button4
            width: parent.width
            height:parent.height/4

            background: Rectangle{
                radius: radiusButt
                border.width: 3
                color: position==3?activeBackGroundCol:backGroundCol
                border.color: position==2?activeBorderCol:borderCol
                anchors.fill: parent
            }

            TextCust {
                id: text4
                color: position==3?activeTextCol:textCol
                text: textPos4
                anchors.fill: parent
                level:2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}




