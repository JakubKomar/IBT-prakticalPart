import QtQuick 2.0

Item {
    id: rectangle1
    width: 672
    height: 39
    property string description: "ENGINE CONTROLS"
    Text {
        id: text4
        x: 269
        height: 38
        color: "#ffffff"
        text:description
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        font.pixelSize: 35
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.capitalization: Font.AllUppercase
        anchors.topMargin: 0
    }

    Rectangle {
        id: rectangle
        y: 37
        height: 1
        color: "#ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 30
        anchors.rightMargin: 30
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5}D{i:1}D{i:2}
}
##^##*/
