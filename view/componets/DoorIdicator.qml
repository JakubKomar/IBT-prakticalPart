/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:58:34
  * @ Description: door status indicator
 */

import QtQuick

Item{
    id: doorIndicator

    width: 110
    height: 68
    property string name: "name\nname"
    property bool togled:false
    Rectangle {
        id: rectangle
        color: "#bb000000"
        border.color: "#00000000"
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#00000000"
            }

            GradientStop {
                position: 1
                color: "#00000000"
            }

            GradientStop {
                position: 0.49772
                color: "#000000"
            }

            orientation: Gradient.Horizontal
        }
    }

    TextCust {
        id: textCust
        level:2
        height: 26
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        font.letterSpacing: -3.2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.topMargin: 2
        anchors.rightMargin: 8
        anchors.leftMargin: 8
        text:!togled?"locked":"open"
        color:!togled?"green":"orange"

    }

    TextCust {
        id: textCust1
        height: 33
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 8
        anchors.topMargin: 32
        anchors.leftMargin: 8
        level: 3
        color:Styles.blueDark
        text:name
    }

    HalfTransparentBorder {
        id: halfTransparentBorder
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: 28
        anchors.rightMargin: 0
        anchors.leftMargin: 0
    }



}





/*##^##
Designer {
    D{i:0;height:61;width:98}D{i:1}D{i:6}D{i:7}D{i:8}
}
##^##*/
