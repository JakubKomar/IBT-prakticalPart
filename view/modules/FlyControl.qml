import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:antiIce
    width: 1750
    height: 1060
    color: "#000000"
    border.color: "#00000000"

    Rectangle {
        id: lSide
        x: 0
        y: 0
        width:parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#ffffff"
        border.width: 2
        Text {
            id: text1
            x: 350
            y: 8
            color: "#ffffff"
            text: qsTr("Fly control")
            font.pixelSize: 30
        }

        Guarded3Swich {
            id: guarded3Swich
            x: 70
            y: 106
        }

        Guarded3Swich {
            id: guarded3Swich1
            x: 70
            y: 223
        }

        GuardedSwichAlt {
            id: guardedSwichAlt
            x: 70
            y: 340
        }

        GuardedSwichAlt {
            id: guardedSwichAlt1
            x: 70
            y: 485
        }

        Swich2stateBasic {
            id: swich2stateBasic
            x: 339
            y: 433
        }

        Swich3pos {
            id: swich3pos
            x: 527
            y: 458
        }

        GuardedSwichAlt {
            id: guardedSwichAlt2
            x: 527
            y: 179
        }

        Text {
            id: text3
            x: 350
            y: 654
            color: "#ffffff"
            text: qsTr("Hydr Pumps")
            font.pixelSize: 30
        }

        Swich2stateWarning {
            id: swich2stateWarning
            x: 65
            y: 734
        }

        Swich2stateWarning {
            id: swich2stateWarning1
            x: 237
            y: 734
        }

        Swich2stateWarning {
            id: swich2stateWarning2
            x: 453
            y: 734
        }

        Swich2stateWarning {
            id: swich2stateWarning3
            x: 627
            y: 734
        }

        WarningIndicator {
            id: warningIndicator
            x: 247
            y: 936
        }

        WarningIndicator {
            id: warningIndicator1
            x: 458
            y: 936
        }

    }
    Rectangle {
        id: rSide
        x: parent.width/2
        y: 0
        width:parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#ffffff"
        border.width: 2

        Text {
            id: text2
            x: 350
            y: 8
            color: "#ffffff"
            text: qsTr("Presuralization")
            font.pixelSize: 30
        }

        Swich3pos {
            id: swich3pos1
            x: 297
            y: 642
        }

        Swich2stateAltVert {
            id: swich2stateAltVert
            x: 372
            y: 412
        }


    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}
D{i:11}D{i:1}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}
D{i:23}D{i:24}D{i:25}D{i:26}D{i:27}D{i:28}D{i:29}D{i:30}D{i:31}D{i:32}D{i:33}D{i:34}
D{i:35}D{i:36}D{i:37}D{i:12}
}
##^##*/
