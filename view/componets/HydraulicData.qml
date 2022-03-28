/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-29 01:13:47
  * @ Description: hydraulic data component
 */

import QtQuick

Rectangle {
    id: rectangle2
    y: 36
    width: 227
    height: 106
    color: "#00ffffff"
    radius: 13
    border.color: "gray"
    anchors.horizontalCenter: parent.horizontalCenter

    TextCust {
        id: text4
        y: 33
        color: Styles.blueDark
        text: qsTr("QTY %")
        level:3
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextCust {
        id: text5
        y: 71
        color: Styles.blueDark
        text: qsTr("PRESS")
        level:3
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 0
    }

    TextCust {
        id: text6
        y: 6
        color:Styles.blueDark
        text: qsTr("A")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        level:3
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -71
    }

    TextCust {
        id: text7
        y: 0
        width: 12
        height: 27
        color: Styles.blueDark
        text: qsTr("B")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        level:3
        anchors.horizontalCenterOffset: 74
        anchors.horizontalCenter: parent.horizontalCenter
    }

    TextCust {
        id: qtyB
        x: 148
        y: 27
        width: 79
        height: 27
        color: "#ffffff"
        text: qsTr("87")
        anchors.right: parent.right
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
    }

    TextCust {
        id: qtyA
        y: 27
        width: 85
        height: 27
        color: "#ffffff"
        text: qsTr("87")
        anchors.left: parent.left
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 0
    }

    TextCust {
        id: pressB
        x: 148
        y: 65
        width: 79
        height: 27
        color: "#ffffff"
        text: qsTr("2920")
        anchors.right: parent.right
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
    }

    TextCust {
        id: pressA
        y: 65
        width: 85
        height: 27
        color: "#ffffff"
        text: qsTr("2940")
        anchors.left: parent.left
        level:2
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 0
    }
    Connections{
        target:DashBoardRender
        function onSetIndicators(name, val){
            switch(name){
                case"aPress":{
                    pressA.text=val.toFixed(0)
                    break
                }
                case"bPress":{
                    pressB.text=val.toFixed(0)
                    break
                }
                case"aQty":{
                    qtyA.text=val.toFixed(0)
                    break
                }
                case"bQty":{
                    qtyB.text=val.toFixed(0)
                    break
                }
                default:{}
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:4;height:106;width:227}D{i:1}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}
D{i:8}D{i:9}
}
##^##*/
