import QtQuick
import QtQuick.Controls

Button {
    id:swich2stateWarning
    height: 196
    property alias warningIndicator: warningIndicator
    property alias swich2state: swich2state

    implicitWidth: 150
    implicitHeight: 200

    property alias togled: swich2state.togled
    property bool warningTogle: false
    property string description:"dawdwa"

    background: Rectangle {
        color: "#ffffff"
        border.color: "#ffffff"
        border.width: 2
    }

    Column {
        id: column
        anchors.fill: parent
        anchors.bottomMargin: 0
        spacing: -3

        Swich2state {
            id: swich2state
            height: 135
            width:parent.width
            description:swich2stateWarning.description
        }

        WarningIndicator {
            id: warningIndicator
            height: 65
            textHeight: 28
            width:parent.width
            warText: "LOW\nPRESSURE"
            state:warningTogle?"on":""
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:2}D{i:3}D{i:4}D{i:2}
}
##^##*/