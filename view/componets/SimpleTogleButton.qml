import QtQuick
import QtQuick.Controls
Button {
    id:simpleTogleButton
    x: 0
    width: 145
    height: 66
    property color onBackColor: "white"
    property color onBackBorderColor: "blue"

    property color offBackColor: "black"
    property color offBackBorderColor: "white"

    property bool togled:false

    background:
        Rectangle{
            anchors.fill: parent
            color: offBackColor
            border.color: offBackBorderColor
            border.width: 2


    }

    Text {
        id: text1
        x: 62
        y: 25
        text: qsTr("Text")
        font.pixelSize: 12
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:3}
}
##^##*/
