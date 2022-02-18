import QtQuick
import QtQuick.Shapes
import "../componets"
Item {
    id: circularDial
    width: 210
    height: 210
    property double value: 30
    property double maxValue: 80
    property double minValue: 0

    property double smallStep:1
    property double bigStep:10

    property alias analog: analog

    property string desText:"Description"
    property string units:"Units"
    Rectangle{
        id: analog
        anchors.fill: parent
        color:"black"
    }
    CircularDialV2 {
        id: circularDialV2
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        value: 30
        maxValue: 80
        minValue: 0

        smallStep:1
        bigStep:10
        Rectangle {
            id: digitalField
            x: 59
            width: 143
            height: 100
            color: "#00ffffff"
            radius: 20
            border.color: "#ffffff"
            border.width: 1
            anchors.verticalCenter: parent.verticalCenter

            Text {
                id: description
                x: 37
                y: 2
                color: "#0083ff"
                text: desText
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: digitalValue
                x: 53
                y: 26
                color: "#ffffff"
                text: value.toFixed(2)
                font.pixelSize: 41
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0
                font.family: "Verdana"
                anchors.horizontalCenterOffset: -1
                font.strikeout: false
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: unitsText
                x: 56
                y: 69
                color: "#0083ff"
                text: units
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}D{i:1}D{i:4}D{i:5}D{i:6}D{i:3}D{i:2}
}
##^##*/
