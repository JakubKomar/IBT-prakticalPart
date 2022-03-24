/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:37:24
  * @ Description: apu source selector
 */

import QtQuick
import QtQuick.Controls

Item {
    id:swichesApuGen
    width: 300
    height: 200
    property alias infoIndicator: infoIndicator
    property alias button4: button4
    property alias button3: button3
    property alias button2: button2
    property alias button1: button1

    property color bcCol:"white"
    property color bcBorderCol:"#484848"
    property color textCol:bcBorderCol

    property string text1:"OFF"
    property string text2:"ON"

    Rectangle {
        id: rectangle2
        color: "#282828"
        radius: 8
        border.color: "#6a6a6a"
        anchors.fill: parent

        Rectangle {
            id: rectangle
            x: 0
            y: 0
            width: parent.width/2
            height: parent.height
            color: "#00ffffff"
            border.color: "#00515151"

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

            Button {
                id: button2
                x: 0
                y:parent.height/3*2
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

        Rectangle {
            id: rectangle1
            x: 150
            y: 0
            width: parent.width/2
            height: parent.height
            color: "#00ffffff"
            border.color: "#00515151"

            Button {
                id: button3
                x: 0
                y: 0
                width: parent.width
                height: parent.height/3
                background: Rectangle {
                    color: bcCol
                    radius: 8
                    border.color: bcBorderCol
                    border.width: 2
                    TextCust {
                        id: button1Text1
                        color: textCol
                        text: text1
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        level:2
                    }
                }
            }

            Button {
                id: button4
                x: 0
                y: parent.height/3*2
                width: parent.width
                height: parent.height/3
                background: Rectangle {
                    color: bcCol
                    radius: 8
                    border.color: bcBorderCol
                    border.width: 2
                    TextCust {
                        id: button2Text1
                        color: textCol
                        text: text2
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        level:2
                    }
                }
            }
        }
    }

    InfoIndicator {
        id: infoIndicator
        height: parent.height/3
        anchors.verticalCenter: parent.verticalCenter
        description: "APU\nOFF BUS"
        anchors.horizontalCenter: parent.horizontalCenter
    }

}



/*##^##
Designer {
    D{i:0;formeditorZoom:1.66}D{i:3}D{i:6}D{i:2}D{i:10}D{i:13}D{i:9}D{i:1}D{i:16}
}
##^##*/
