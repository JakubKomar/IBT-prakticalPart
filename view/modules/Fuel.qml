import QtQuick
import QtQuick.Controls

Item {
    id: fuelMod
    Rectangle {
        id: rectangle
        color: "#ff0004"
        anchors.fill: parent

        Label {
            id: label
            text: qsTr("Fuel module")
            anchors.verticalCenter: parent.verticalCenter
            anchors.verticalCenterOffset: 0
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

}
