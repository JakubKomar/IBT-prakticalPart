import QtQuick

Rectangle {
    id:warningIndicator

    implicitWidth: 140
    implicitHeight: 80

    property bool status:true
    property string warText: "Warning"
    state: status?"on":""
    property color onColor:  "#ff8c00"
    property color offColor: "#271600"

    property color onColorBc:  "#673600"
    property color offColorBc: "#160c00"
    property int textHeight:30
    color: offColorBc
    border.color: "#484848"
    border.width: 3

   Text{
       id:itemText
       color: "#232323"
       text: warText
       anchors.verticalCenter: parent.verticalCenter
       anchors.horizontalCenter: parent.horizontalCenter
       font.pixelSize: textHeight
       horizontalAlignment: Text.AlignHCenter
       verticalAlignment: Text.AlignVCenter
       font.bold: true
       wrapMode: Text.WordWrap
       lineHeight: 0.7

   }
   states: [
       State {
           id: off
           name: "on"

            PropertyChanges {
                target: warningIndicator
                color: onColorBc
            }

            PropertyChanges {
                target: itemText
                color: onColor
            }
       }
   ]
}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}
}
##^##*/
