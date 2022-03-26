/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:26:43
  * @ Description: module description - higlided text - module names
 */

import QtQuick

Item {
    id: rectangle1
    width: 672
    height: 30
    property alias halfTransparentBorder: halfTransparentBorder
    property alias text4: text4
    property string description: "ENGINE CONTROLS"

    property color lineCol:"gray"
    property alias textSpacing:text4.font.letterSpacing
    TextCust {
        id: text4
        color: Styles.blueDark
        text:description
        level:2
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.capitalization: Font.AllUppercase

        HalfTransparentBorder {
            id: halfTransparentBorder
            y: 29
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            grad2: lineCol
            anchors.bottomMargin: 1
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }



}

/*##^##
Designer {
    D{i:0;height:30;width:150}D{i:2}D{i:1}
}
##^##*/
