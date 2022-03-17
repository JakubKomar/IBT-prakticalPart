import QtQuick
import QtQuick.Controls

Item {
    id:swich2stateAltVert
    width: 150
    height: 180
    property alias button2: button2
    property alias button1: button1
    property bool togled:false

    property color turnOnBcCol:"white"
    property color turnOnBcBorderCol:"#00b9ff"
    property color turnOnTextCol: turnOnBcBorderCol

    property color turnOffBcCol:"gray"
    property color turnOffBcBorderCol:"white"
    property color turnOffTextCol:turnOffBcBorderCol

    property string textOn:"ON"
    property string textOff:"OFF"
    Button {
        id: button1
        x: 0
        y: 0
        width: parent.width
        height: parent.height/2
        background: Rectangle{
            color: !togled?turnOnBcCol:turnOffBcCol
            border.color: !togled?turnOnBcBorderCol:turnOffBcBorderCol
            border.width: 2
            radius: 8
            TextCust {
                id: button1Text
                text: textOff
                color: !togled?turnOnTextCol:turnOffTextCol
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level:2
            }
        }
    }

    Button {
        id: button2
        x: 0
        y: parent.height/2
        width: parent.width
        height: parent.height/2

        background: Rectangle{
            color: togled?turnOnBcCol:turnOffBcCol
            radius: 8
            border.color: togled?turnOnBcBorderCol:turnOffBcBorderCol
            border.width: 2
            TextCust {
                id: button2Text
                text: textOn
                color: togled?turnOnTextCol:turnOffTextCol
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level:2
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}D{i:1}D{i:4}
}
##^##*/
