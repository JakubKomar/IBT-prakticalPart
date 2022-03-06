import QtQuick
import QtQuick.Controls
Item {
    id: item1
    x: 0
    y: 0
    width: 250
    height: 130


    Button {
        id: button
        text: qsTr("Button")
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.rightMargin: 8
        anchors.leftMargin: 38
        anchors.bottomMargin: 9
        anchors.topMargin: 8
    }

    Guard {
        id: guard
        anchors.fill: parent
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:1}D{i:2}
}
##^##*/
