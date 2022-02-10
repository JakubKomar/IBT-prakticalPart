import QtQuick

Rectangle {
    id:pumpCombo
    color: "#00ffffff"

    implicitWidth: 320
    implicitHeight: 200
    clip: true

    Swich2stateWarning{
        id:leftPump
        x: 170
        y: 0
    }
    Swich2stateWarning{
        id:rightPump
        x: 0
        y: 0
    }
}





/*##^##
Designer {
    D{i:0;height:200;width:320}D{i:1}D{i:2}
}
##^##*/
