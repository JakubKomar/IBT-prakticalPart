import QtQuick
import QtQuick.Controls

Rectangle {
    id:swich2stateWarning
    height: 205
    color: "#ffffff"
    border.color: "#ffffff"

    implicitWidth: 150
    implicitHeight: 200

    Swich2state {
        id: swich2state
        x: 225
        y: 0
    }

    WarningIndicator {
        id: warningIndicator
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 148
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:2}D{i:1}D{i:2}
}
##^##*/
