import QtQuick 2.0

Item {
    id: item1
    width: 660
    height: 60
    property double minVal: -60
    property double maxVal: 60
    property double value: 0
    Rectangle {
        id: rectangle
        y: 0
        height: 30
        color: "#2d2d2d"
        border.color: "#ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.66}D{i:1}
}
##^##*/
