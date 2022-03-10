import QtQuick

Item {
    id:infoIndicator

    implicitWidth: 140
    implicitHeight: 80

    property alias status:indicator.value
    property alias indicator: indicator

    property alias description: indicator.description
    property alias textHeight:indicator.textHeight
    height: 65

    Indicator{
        id: indicator
        anchors.fill: parent
        offColorBc: "#000c16"
        onColorBc: "#004e90"
        onColor: "#ffffff"
        offColor: "#232323"
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:1}
}
##^##*/
