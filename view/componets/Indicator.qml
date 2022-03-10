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
    border.width: borderWidth

    property color borderCol: "#484848"
    border.color: borderCol

    property int borderRadius:0
    radius:borderRadius

    color: Qt.rgba(offColorBc.r+(onColorBc.r-offColorBc.r)*value,
                   offColorBc.g+(onColorBc.g-offColorBc.g)*value,
                   offColorBc.b+(onColorBc.b-offColorBc.b)*value,
                   1)

   Text{
       id:itemText
       color: Qt.rgba(offColor.r+(onColor.r-offColor.r)*value,
                      offColor.g+(onColor.g-offColor.g)*value,
                      offColor.b+(onColor.b-offColor.b)*value,
                      1)
       text: description
       anchors.verticalCenter: parent.verticalCenter
       anchors.horizontalCenter: parent.horizontalCenter
       font.pixelSize: textHeight
       horizontalAlignment: Text.AlignHCenter
       verticalAlignment: Text.AlignVCenter
       font.bold: true
       wrapMode: Text.WordWrap
       font.capitalization: Font.AllUppercase
       lineHeight: 0.7

   }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:1}
}
##^##*/



/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}
}
##^##*/
