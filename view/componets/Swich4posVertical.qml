/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 21:06:21
  * @ Description: 4 position swich
 */

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
            height:parent.height/4

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
                border.width: position==3?3:1
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





/*##^##
Designer {
    D{i:0;height:440;width:140}D{i:4}D{i:2}D{i:7}D{i:5}D{i:10}D{i:8}D{i:13}D{i:11}D{i:1}
}
##^##*/
