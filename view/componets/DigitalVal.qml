/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:58:27
  * @ Modified time: 2022-04-13 20:58:28
  * @ Description: digital value field
 */

import QtQuick

Item {
    width: 164
    height: 105
    property alias digitalVal: digitalVal
    property int fixedVal: 1
    property int texHeight:57
    property double value: 100.1
    property bool disableVal:false
    property bool higliteVal:false
    Rectangle {
        id: rectangle
        color: higliteVal?"white":"black"
        radius: 16
        border.color: "#ffffff"
        border.width: 1
        anchors.fill: parent

        TextCust {
            id: digitalVal
            level:2
            visible: !disableVal
            color: !higliteVal?"white":"black"
            text: value.toFixed(fixedVal)
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;height:45;width:75}D{i:2}D{i:1}
}
##^##*/
