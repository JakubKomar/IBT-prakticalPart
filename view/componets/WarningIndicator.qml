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
    color: "#160c00"
    border.color: "#363636"
    border.width: 4

   Text{
       id:itemText
       color: "#232323"
       text: warText
       anchors.verticalCenter: parent.verticalCenter
       anchors.horizontalCenter: parent.horizontalCenter
       font.pixelSize: 30
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
                color: "#673600"
            }

            PropertyChanges {
                target: itemText
                color: "#ffa000"
            }
       }
   ]
}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}
}
##^##*/
