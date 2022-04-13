/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:57:34
  * @ Description: electrical bus graphic repr.
 */

import QtQuick

Item {
    width: 140
    height: 231
    property alias sourceOff: sourceOff
    property alias trBussOff: trBussOff
    property string busText: "BUS 1"
    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 5
        border.color: "#808080"
        anchors.fill: parent
        clip: true

        Column {
            id: column
            x: 257
            y: 80
            anchors.fill: parent
            anchors.rightMargin: 2
            anchors.leftMargin: 2
            anchors.bottomMargin: 2
            anchors.topMargin: 2


            TextCust {
                id: text1
                width: parent.width
                height: parent.height/3
                color: "#ababab"
                text: busText
                level:2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }

            WarningIndicator {
                id: trBussOff
                width: parent.width
                height: parent.height/3
                warText: "TRANSFER\nBUS OFF"
            }

            WarningIndicator {
                id: sourceOff
                width: parent.width
                height: parent.height/3
                warText: "SOURCE\nOFF"
            }





        }
    }

}

/*##^##
Designer {
    D{i:0;height:188;width:143}D{i:3}D{i:4}D{i:5}D{i:2}D{i:1}
}
##^##*/
