import QtQuick
import QtQuick.Controls

Item {
    id:swich2stateAlt
    width: 180
    height: 90
    property alias button2: button2
    property alias button1: button1
    property bool togled:false

    property color turnOnBcCol:"white"
    property color turnOnBcBorderCol:"green"
    property color turnOnTextCol: swich2stateAlt.turnOnBcBorderCol

    property color turnOffBcCol:"gray"
    property color turnOffBcBorderCol:"white"
    property color turnOffTextCol:swich2stateAlt.turnOffBcBorderCol

    property string textOn:"ON"
    property string textOff:"OFF"
    Button {
        id: button1
        x: 0
        y: 0
        width: parent.width/2
        height: parent.height
        background: Rectangle{
            color: !togled?turnOnBcCol:turnOffBcCol
            border.color: !togled?turnOnBcBorderCol:turnOffBcBorderCol
            border.width: 2
            radius: 8
            Text {
                id: button1Text
                text: textOff
                color: !togled?turnOnTextCol:turnOffTextCol
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 30
            }
        }
    }

    Button {
        id: button2
        x: parent.width/2
        y: 0
        width: parent.width/2
        height: parent.height

        background: Rectangle{
            color: togled?turnOnBcCol:turnOffBcCol
            radius: 8
            border.color: togled?turnOnBcBorderCol:turnOffBcBorderCol
            border.width: 2
            Text {
                id: button2Text
                text: textOn
                color: togled?turnOnTextCol:turnOffTextCol
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 30
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:1}D{i:4}
}
##^##*/
