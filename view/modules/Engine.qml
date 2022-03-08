import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:engines

    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"

    Swich2stateBasic {
        id: swich2stateBasic
        x: 350
        y: 824
    }

    Swich2stateBasic {
        id: swich2stateBasic1
        x: 1320
        y: 824
    }

    Swich3pos {
        id: swich3pos
        x: 762
        y: 849
    }

    Swich3pos {
        id: swich3pos1
        x: 275
        y: 622
    }

    Swich3pos {
        id: swich3pos2
        x: 1245
        y: 622
    }

    Swich3pos {
        id: swich3pos3
        x: 762
        y: 622
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}
}
##^##*/
