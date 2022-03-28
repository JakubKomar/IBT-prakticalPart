/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-29 01:09:12
  * @ Description: temperature seter slider
 */

import QtQuick
import QtQuick.Controls

Slider {
    id: custSlider
    width: 437
    height: 40
    touchDragThreshold: 0
    property double pading: 0.5
    property int textPading: 6
    property double deadZone: 0.07
    snapMode: RangeSlider.SnapAlways
    stepSize: 0.01
    to: 1
    from: 0
    anchors.rightMargin: 0
    anchors.leftMargin: 0
    value: 0.5

    background: Rectangle{
        id: rectangle1
        x:0
        y:parent.height*pading/2
        width:parent.width
        height:parent.height-(parent.height*pading)
        color: "black"
        border.color: "transparent"
        radius: 5

        gradient: Gradient {
            orientation: Gradient.Horizontal
            GradientStop { position: 0.0; color:  Styles.blue }
            GradientStop { position: 0.5; color: "#e9e9e9" }
            GradientStop { position: 1.0; color: "#ffea00" }

        }

        TextCust {
            id: text1
            x: parent.width-width-textPading
            text: qsTr("WARM")
            anchors.verticalCenter: parent.verticalCenter
            anchors.bottom: rectangle1.bottom
            level:3
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
        }

        TextCust {
            id: text2
            text: qsTr("AUTO")
            anchors.verticalCenter: parent.verticalCenter
            level:3
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        TextCust {
            id: text3
            x: deadZone*(to-from)* parent.width + textPading
            text: qsTr("COLD")
            anchors.verticalCenter: parent.verticalCenter
            anchors.bottom: rectangle1.bottom
            level:3
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
        }
        Rectangle{
            x:-1
            y:-1
            width: deadZone*(to-from)* parent.width
            height: parent.height+2
            border.color: "gray"
            color: "black"
            radius: 5
            TextCust {
                id: text4
                anchors.verticalCenter: parent.verticalCenter
                color: "#ffffff"
                text: qsTr("OFF")
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level:3
            }
        }
    }
    handle: Rectangle {
        id: rectangle
        x:  (value-from)/(to-from)*(parent.width-width)
        color: "#dc000000"
        implicitWidth: 50
        implicitHeight: parent.height
        radius: 10
        border.width: 2
        border.color: Styles.blueDark
        Text {
            id: name
            color: Styles.blueDark
            text: qsTr("||")
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: -7
            font.pointSize: 18
        }

    }
    function setVal(val){
        value= val
    }
    function getVal(){
        return value
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5;height:63;width:667}
}
##^##*/
