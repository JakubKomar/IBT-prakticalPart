import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:engines

    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"

    Rectangle {
        id: leftSide
        x: 0
        y: 0
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#ffffff"

        Swich2stateBasic {
            id: swich2stateBasic
            x: 102
            y: 865
        }

        Swich2stateBasic {
            id: swich2stateBasic1
            x: 435
            y: 865
        }

        Swich3pos {
            id: swich3pos
            x: 268
            y: 570
        }

        Swich3pos {
            id: swich3pos1
            x: 27
            y: 759
        }

        Swich3pos {
            id: swich3pos2
            x: 360
            y: 759
        }

        Swich3pos {
            id: swich3pos3
            x: 268
            y: 439
        }
    }
    Rectangle {
        id: rightSide
        x: parent.width/2
        y:0
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#ffffff"

        EngineData {
            id: engineData
            anchors.fill: parent
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:1}D{i:9}D{i:8}
}
##^##*/
