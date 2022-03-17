import QtQuick

Item {
    id:warningIndicator

    implicitWidth: 140
    implicitHeight: 80

    property alias status:indicator.value

    property alias textHeight:indicator.textHeight

    property alias indicator: indicator

    property alias warText: indicator.description
    property alias radius: indicator.radius
    property alias border:indicator.border
    property alias itemText:indicator.itemText
    height: 65

    Indicator{
       id: indicator
       anchors.fill: parent
       clip: false
       borderWidth: 2
       offColorBc: "#000000"
       onColorBc: "#673600"
       onColor: "#ff8c00"
       offColor: "#271600"
    }
}
/*##^##
Designer {
    D{i:0;height:80;width:140}D{i:1}
}
##^##*/
