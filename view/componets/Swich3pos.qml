/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:38:31
  * @ Description: swich 3 position 
 */

import QtQuick
import QtQuick.Controls

Item {
    id: swich3pos
    height: 100
    property alias button3: button3
    property alias button2: button2
    property alias button1: button1
    width: 300
    property color activeBackGroundCol: "#000000"
    property color backGroundCol: "#000000"
    property color activeBorderCol: Styles.blue
    property color borderCol: "white"
    property color textCol: "white"
    property color activeTextCol: Styles.blue
    property int radiusButt:4

    property int position: 0
    property string textPos1:"OFF"
    property string textPos2:"AUTO"
    property string textPos3:"ON"
    property int textWidth:36

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
                border.width: position==0?3:1
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
            width: parent.width/3
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.topMargin: 0

            background: Rectangle{
                radius: radiusButt
                border.width: position==1?3:1
                color: position==1?activeBackGroundCol:backGroundCol
                border.color: position==1?activeBorderCol:borderCol
                anchors.fill: parent
            }

            TextCust {
                id: text2
                color: position==1?activeTextCol:textCol
                text: textPos2
                level:2
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
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
                border.width: position==2?3:1
                color: position==2?activeBackGroundCol:backGroundCol
                border.color: position==2?activeBorderCol:borderCol
                anchors.fill: parent
            }

            TextCust {
                id: text3
                color: position==2?activeTextCol:textCol
                text: textPos3
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level:2
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;height:100;width:300}D{i:4}D{i:2}D{i:7}D{i:5}D{i:10}D{i:8}D{i:1}
}
##^##*/
