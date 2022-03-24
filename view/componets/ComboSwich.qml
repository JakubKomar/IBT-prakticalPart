/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:19:43
  * @ Description: marged 2 swiches - cant be separated trought gests
 */

import QtQuick

Item {
    id:comboSwich
    width: 290
    height: 150
    property alias margeButt: margeButt
    property alias rightButt: rightButt
    property alias leftButt: leftButt
    property bool splited: false
    property bool leftState: leftButt.togled
    property bool rightState: rightButt.togled
    signal leftButClicked
    signal rightButClicked
    signal mergeButClicked

    Rectangle {
        visible:!splited?true:false
        id: rectangle
        anchors.fill: parent
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#00434343"
            }

            GradientStop {
                position: 0.31963
                color: "#3a3a3a"
            }
            GradientStop {
                position: 0.73059
                color: "#3a3a3a"
            }

            GradientStop {
                position: 1
                color: "#00434343"
            }
            orientation: Gradient.Horizontal
        }

        Text {
            id: text1
            x: 20
            y: 26
            width: 59
            height: 82
            color: Styles.blueDark
            text: qsTr("<<")
            font.letterSpacing: -21.7
            font.pixelSize: 61
        }

        Text {
            id: text2
            x: 206
            y: 26
            width: 59
            height: 82
            color: Styles.blueDark
            text: qsTr(">>")
            font.letterSpacing: -21.7
            font.pixelSize: 61
        }

        Swich2state {
            id: margeButt
            x: 77
            y: 0
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle {
        id: rectangle1
        color: "#1e1e1e"
        anchors.fill: parent
        visible:splited?true:false
        Swich2state {

            id: leftButt
            y: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }

        Rectangle {
            id: rectangle2
            x: 144
            y: 0
            width: 1
            color: Styles.blueDark
            border.color: "#00000000"
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Swich2state {
            id: rightButt
            x: 155
            y: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
        }

    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        onPressAndHold: {
            if(leftButt.togled==rightButt.togled)
                splited=!splited
        }
        onClicked:{
            if(!splited){
                mergeButClicked()
            }
            else{
                if(mouseX<parent.width/2)
                    leftButClicked()
                else
                    rightButClicked()
            }
        }
    }

    function seter(leftState,rightState){
        if(!splited){
            if(leftState!==rightState){
                splited=true
            }
            else{

            }
        }
        if(leftState===rightState)
            margeButt.togled=leftState
        leftButt.togled=leftState
        rightButt.togled=rightState
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.05;height:150;width:290}D{i:7}D{i:8}D{i:9}D{i:1}D{i:11}D{i:12}
D{i:13}D{i:10}D{i:14}
}
##^##*/
