import QtQuick
import QtQuick.Controls

Button {
    id:swich2stateWarning
    height: 206

    implicitWidth: 150
    implicitHeight: 200

    property bool togled: false
    property bool warningTogle: false

    background: Rectangle {
        color: "#ffffff"
        border.color: "#ffffff"
        border.width: 2
    }

    Column {
        id: column
        anchors.fill: parent

        Swich2state {
            id: swich2state
            state:togled?"on":""
        }

        WarningIndicator {
            id: warningIndicator
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 148
            state:warningTogle?"on":""
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:2}D{i:3}D{i:4}D{i:2}
}
##^##*/
