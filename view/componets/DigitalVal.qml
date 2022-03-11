import QtQuick 2.0

Item {
    width: 164
    height: 105
    property alias digitalVal: digitalVal
    property int fixedVal: 1
    property int texHeight:57
    property double value: 100.1
    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 16
        border.color: "#ffffff"
        border.width: 2
        anchors.fill: parent

        Text {
            id: digitalVal
            color: "#ffffff"
            text: value.toFixed(fixedVal)
            anchors.fill: parent
            font.pixelSize: texHeight
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:2}D{i:1}
}
##^##*/
