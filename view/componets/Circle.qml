import QtQuick 2.0

Item {
    width: 50
    height: 50
    property alias rectangle: rectangle

    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
        radius:parent.width/2

    }

}
