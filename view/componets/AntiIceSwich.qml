import QtQuick 2.0
import QtQuick.Controls 2.0
Item {
    id:antiIceSwich
    width: 150
    height: 262
    property alias swich2stateWarning: swich2stateWarning
    property alias stateIndicator: stateIndicator
    signal clicked()
    Column {
        id: column
        anchors.fill: parent

        StateIndicator {
            id: stateIndicator
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        Swich2stateWarning {
            id: swich2stateWarning
            warningIndicator.warText: "OVERHEAT"
            description: "SIDE"
            onClicked:{
                antiIceSwich.clicked()
            }
        }

    }

}
