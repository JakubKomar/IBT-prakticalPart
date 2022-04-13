/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 21:06:15
  * @ Description: vertical swich 3 position
 */

import QtQuick
import QtQuick.Controls

Item {
    id: swich3pos
    height: 231
    property alias button3: button3
    property alias button2: button2
    property alias button1: button1
    width: 94
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

    Column {
        id: row
        anchors.fill: parent
        bottomPadding: 0
        rightPadding: 0
        leftPadding: 0
        spacing: 0

        Button {
            id: button1
            width: parent.width
            height: parent.height/3
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
            width: parent.width
            height: parent.height/3
            y:parent.height/3
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
            width: parent.width
            height: parent.height/3
            y:parent.height/3*2
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




