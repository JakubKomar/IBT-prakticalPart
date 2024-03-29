/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 21:04:30
  * @ Description: base for all annunciators
 */

import QtQuick

Rectangle {
    id:warningIndicator

    width: 140
    height: 80

    property double value:1
    property string description: "def\ndef"
    property color onColor:  "#ff8c00"
    property color offColor: "#271600"

    property color onColorBc:  "#673600"
    property color offColorBc: "#160c00"
    property int textHeight:30

    property int borderWidth: 3
    property alias itemText: itemText

    property color borderCol: "#484848"
    border.color:borderOnlyWhenTurned?value>0?borderCol:"transparent" :borderCol
    border.width: 1
    property bool borderOnlyWhenTurned:false

    property int borderRadius:0
    radius:borderRadius

    color: Qt.rgba(offColorBc.r+(onColorBc.r-offColorBc.r)*value,
                   offColorBc.g+(onColorBc.g-offColorBc.g)*value,
                   offColorBc.b+(onColorBc.b-offColorBc.b)*value,
                   1)

    TextCust{
       id:itemText
       color: Qt.rgba(offColor.r+(onColor.r-offColor.r)*value,
                      offColor.g+(onColor.g-offColor.g)*value,
                      offColor.b+(onColor.b-offColor.b)*value,
                      1)
       text: description
       anchors.fill: parent
       font.letterSpacing: -2
       horizontalAlignment: Text.AlignHCenter
       verticalAlignment: Text.AlignVCenter
       font.bold: false
       wrapMode: Text.WordWrap
       level: 2
       anchors.rightMargin: 3
       anchors.leftMargin: 3
       anchors.bottomMargin: 3
       anchors.topMargin: 3
       font.capitalization: Font.AllUppercase
       lineHeight: 0.7

   }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:1.66;height:55;width:110}D{i:1}
}
##^##*/



/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}
}
##^##*/
