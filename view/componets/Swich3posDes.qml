import QtQuick

Item {
    id:swich3posDes
    height: 130
    width: 300
    property string description: "Description"
    property int descriptionTextW: 34
    property alias textPos1: swich3pos.textPos1
    property alias textPos2: swich3pos.textPos2
    property alias textPos3: swich3pos.textPos3
    property alias textWidth: swich3pos.textWidth

    property alias butt1: swich3pos.butt1
    property alias butt2: swich3pos.butt2
    property alias butt3: swich3pos.butt3

    property alias position:swich3pos.position
    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 7
        border.color: "#ffffff"
        border.width: 3
        anchors.fill: parent
    }

    Text {
        id: text1
        height: 54
        color: "#a4a4a4"
        text: description
        anchors.left: parent.left
        anchors.right: parent.right
        font.pixelSize: descriptionTextW
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Verdana"
        anchors.rightMargin: 0
        anchors.leftMargin: 0
    }

    Swich3pos {
        id: swich3pos
        x: 3
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 50
        anchors.bottomMargin: 3
        radiusButt: 2
        anchors.rightMargin: 3
        anchors.leftMargin: 3
    }
}





/*##^##
Designer {
    D{i:0;formeditorZoom:1.25}D{i:3}D{i:4}D{i:2}D{i:1}
}
##^##*/
