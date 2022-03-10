import QtQuick

Item {
    id:stateIndicator

    implicitWidth: 140
    implicitHeight: 80

    property alias status:indicator.value

    property alias indicator: indicator

    height: 65

    Indicator{
       id: indicator
       anchors.fill: parent
       description: "ON"
       value: 0
       onColor: "#2aff00"
       onColorBc: "#028901"
       offColorBc: "#001f04"
       offColor: "#002d04"
    }
}
