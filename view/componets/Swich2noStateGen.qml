/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 21:05:42
  * @ Description: source selector swich
 */

import QtQuick
import QtQuick.Controls

Item {
    id:swich2noStateGen
    width: 150
    height: 200
    property alias infoIndicator: infoIndicator
    property alias button2: button2
    property alias button1: button1

    property color bcCol:"black"
    property color bcBorderCol:Styles.blueDark
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
                    TextCust {
                        id: button1Text
                        text: text1
                        color: textCol
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        level:2
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
                    TextCust {
                        id: button2Text
                        text: text2
                        color: textCol
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        level:2
                    }
                }
            }
        }
    }
}



/*##^##
Designer {
    D{i:0;height:200;width:150}D{i:3}D{i:6}D{i:7}D{i:2}D{i:1}
}
##^##*/
