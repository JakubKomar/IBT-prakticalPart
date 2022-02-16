import QtQuick
import QtQuick.Controls

Button {
    id:swich2stateWarning
    height: 196

    implicitWidth: 150
    implicitHeight: 200

    property bool togled: false
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

        Swich2state {
            id: swich2state
            height: 135
            width:parent.width
            state:togled?"on":""
            description:swich2stateWarning.description
        }

        WarningIndicator {
            id: warningIndicator
            height: 61
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
