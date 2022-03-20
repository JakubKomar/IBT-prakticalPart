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

        value: circularDial.value
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

            TextCust {
                id: description
                x: 37
                y: 2
                width: 360
                height: 27
                color: Styles.blueDark
                text: desText
                anchors.verticalCenter: parent.verticalCenter
                level:3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenterOffset: -28
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextCust {
                id: digitalValue
                x: 53
                color: "#ffffff"
                text: value.toFixed(2)
                anchors.verticalCenter: parent.verticalCenter
                level:2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }

            TextCust {
                id: unitsText
                x: 56
                width: 158
                height: 20
                color: Styles.blueDark
                text: units
                anchors.verticalCenter: parent.verticalCenter
                anchors.bottom: parent.bottom
                level:3
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.verticalCenterOffset: 28
                anchors.bottomMargin: 0
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;height:311;width:210}D{i:1}D{i:4}D{i:5}D{i:6}D{i:3}D{i:2}
}
##^##*/
