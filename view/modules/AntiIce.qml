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
            id: text2
            x: 350
            y: 8
            color: "#ffffff"
            text: qsTr("Wing anti-ice")
            font.pixelSize: 30
        }

        Swich2state {
            id: swich2state6
            x: 128
            y: 316
        }

        Swich2state {
            id: swich2state7
            x: 476
            y: 316
        }

        Swich2state {
            id: swich2state8
            x: 680
            y: 316
        }

        WarningIndicator {
            id: warningIndicator4
            x: 481
            y: 128
        }

        WarningIndicator {
            id: warningIndicator5
            x: 685
            y: 128
        }

        InfoIndicator {
            id: infoIndicator4
            x: 481
            y: 214
        }

        InfoIndicator {
            id: infoIndicator5
            x: 685
            y: 214
        }

        InfoIndicator {
            id: infoIndicator6
            x: 56
            y: 238
        }

        InfoIndicator {
            id: infoIndicator7
            x: 208
            y: 238
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
            id: text1
            x: 350
            y: 8
            color: "#ffffff"
            text: qsTr("Window heat")
            font.pixelSize: 30
        }

        Swich2state {
            id: swich2state
            x: 27
            y: 268
        }

        Swich2state {
            id: swich2state1
            x: 201
            y: 268
        }

        Swich2state {
            id: swich2state2
            x: 519
            y: 268
        }

        Swich2state {
            id: swich2state3
            x: 693
            y: 268
        }

        Swich2stateAltVert {
            id: swich2stateAltVert
            x: 363
            y: 258
        }

        WarningIndicator {
            id: warningIndicator
            x: 26
            y: 66
        }

        WarningIndicator {
            id: warningIndicator1
            x: 206
            y: 66
        }

        WarningIndicator {
            id: warningIndicator2
            x: 524
            y: 66
        }

        WarningIndicator {
            id: warningIndicator3
            x: 698
            y: 66
        }

        InfoIndicator {
            id: infoIndicator
            x: 26
            y: 168
        }

        InfoIndicator {
            id: infoIndicator1
            x: 206
            y: 168
        }

        InfoIndicator {
            id: infoIndicator2
            x: 524
            y: 168
        }

        InfoIndicator {
            id: infoIndicator3
            x: 698
            y: 168
        }

        Swich2state {
            id: swich2state4
            x: 251
            y: 560
        }

        Swich2state {
            id: swich2state5
            x: 475
            y: 560
        }

        CircleButton {
            id: circleButton
            x: 393
            y: 740
        }

        WarningIndicator {
            id: warningIndicator6
            x: 27
            y: 551
        }

        WarningIndicator {
            id: warningIndicator7
            x: 27
            y: 630
        }

        WarningIndicator {
            id: warningIndicator8
            x: 27
            y: 708
        }

        WarningIndicator {
            id: warningIndicator9
            x: 27
            y: 787
        }

        WarningIndicator {
            id: warningIndicator10
            x: 698
            y: 551
        }

        WarningIndicator {
            id: warningIndicator11
            x: 698
            y: 630
        }

        WarningIndicator {
            id: warningIndicator12
            x: 698
            y: 708
        }

        WarningIndicator {
            id: warningIndicator13
            x: 698
            y: 787
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
