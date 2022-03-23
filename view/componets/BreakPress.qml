import QtQuick
import QtQuick.Shapes

Item{
    id:breakPress
    width: 210
    height: 210
    property alias value:circularDialV2.value
    CircularDialV2 {
        id: circularDialV2
        anchors.fill: parent
        orangeVal: 2500
        value: 2658.3
        orangeMinValEneb: true
        orangeMinVal: 2900
        redMinVal: 1200
        redMinValEneb: true
        bigStep: 500
        numScale: 100
        redVal: 3600
        orangeValEneb: false
        redValEneb: true
        maxValue: 4000

        Rectangle {
            id: rectangle
            height: 66
            color: "#000000"
            radius: 8
            border.color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 22
            anchors.leftMargin: 86

            TextCust {
                id: textCust
                y: 46
                text: "PSI 1000x"
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                font.capitalization: Font.MixedCase
                anchors.bottomMargin: 10
                level: 3
                color:Styles.blueDark
            }

            TextCust {
                id: textCust1
                y: 28
                text: (breakPress.value/1000).toFixed(1)
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                level: 2
                color:circularDialV2.col==Styles.blue?"white":circularDialV2.col
            }
        }

    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:1.33;height:210;width:210}D{i:3}D{i:4}D{i:2}D{i:1}
}
##^##*/
