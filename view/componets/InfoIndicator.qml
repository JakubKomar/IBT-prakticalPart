import QtQuick

Rectangle {
    id:infoIndicator

    implicitWidth: 140
    implicitHeight: 80

    property bool status:true
    state: status?"on":""
    property color onColor:  "#ff8c00"
    property color offColor: "#271600"
    color: "#000c16"
    border.color: "#363636"
    border.width: 4

    property string description: "INFO\nIO"
    height: 65

   Text{
       id:itemText
       color: "#232323"
       text: qsTr(description)
       anchors.verticalCenter: parent.verticalCenter
       anchors.horizontalCenter: parent.horizontalCenter
       font.pixelSize: 30
       horizontalAlignment: Text.AlignHCenter
       verticalAlignment: Text.AlignVCenter
       font.bold: true
       wrapMode: Text.WordWrap
       lineHeight: 0.7  //
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
                color: "#ffffff"
            }

            PropertyChanges {
                target: infoIndicator
                color: "#004e90"
            }
       }
   ]
}



/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:1}
}
##^##*/
