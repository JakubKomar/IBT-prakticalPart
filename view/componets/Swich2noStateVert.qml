import QtQuick
import QtQuick.Controls

Item {
    id:swich2noStateVert
    width: 150
    height: 180
    property alias button2: button2
    property alias button1: button1

    property color BcCol:"gray"
    property color BcBorderCol:"white"
    property color TextCol:swich2stateAlt.turnOffBcBorderCol

    property string text1:"ON"
    property string text2:"OFF"
    Button {
        id: button1
        x: 0
        y: 0
        width: parent.width
        height: parent.height/2
        background: Rectangle{
            color: BcBorderCol
            border.color:  BcBorderCol
            border.width: 2
            radius: 8
            Text {
                id: button1Text
                text: text1
                color: TextCol
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 30
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
            color: BcBorderCol
            radius: 8
            border.color: BcBorderCol
            border.width: 2
            Text {
                id: button2Text
                text: text2
                color: TextCol
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pointSize: 30
            }
        }
    }

}


