/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:33:26
  * @ Description: swich 2 position
 */

import QtQuick
import QtQuick.Controls

Item {
    id:swich2noStateVert
    width: 150
    height: 180
    property alias button2: button2
    property alias button1: button1

    property color bcCol:"gray"
    property color bcBorderCol:"white"
    property color textCol:"black"

    property string text1:"ON"
    property string text2:"OFF"
    Button {
        id: button1
        x: 0
        y: 0
        width: parent.width
        height: parent.height/2
        background: Rectangle{
            color: "black"
            border.color:  "gray"
            border.width: 1
            radius: 8
            TextCust {
                id: button1Text
                text: text1
                color: Styles.blueDark
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
        y: parent.height/2
        width: parent.width
        height: parent.height/2

        background: Rectangle{
            color: "black"
            radius: 8
            border.color:  "gray"
            border.width: 1
            TextCust {
                id: button2Text
                text: text2
                color: Styles.blueDark
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
    D{i:0;formeditorZoom:1.5;height:180;width:150}D{i:1}D{i:4}
}
##^##*/
