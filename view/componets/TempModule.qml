import QtQuick 2.0

Item {
    id: item1
    x: 0
    width: 600
    height: 155
    property alias description: description
    property alias tempSlider: tempSlider
    property alias warningIndicator: warningIndicator
    property alias verticaIndicatorDouble: verticaIndicatorDouble


    Rectangle {
        id: rectangle1
        color: "#000000"
        border.color: "#484848"
        border.width: 2
        anchors.fill: parent

        Column {
            id: column
            anchors.fill: parent

            Rectangle {
                id: rectangle
                height: 88
                color: "#00ffffff"
                radius: 0
                border.color: "#484848"
                border.width: 0
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                VerticaIndicatorDouble {
                    id: verticaIndicatorDouble
                    anchors.left: rectangle3.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    text2.text: "CAB"
                    text1.text: "DUC"
                    anchors.bottomMargin: 3
                    anchors.topMargin: 3
                    anchors.rightMargin: 3
                    anchors.leftMargin: 3
                }

                Rectangle {
                    id: rectangle3
                    width: 90
                    color: "#00ffffff"
                    border.color: "#484848"
                    border.width: 2
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0

                    TextCust {
                        id: description
                        color: "#ffffff"
                        text: qsTr("CENTER")
                        anchors.fill: parent
                        level:2
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }

            Rectangle {
                id: rectangle2
                height: 67
                color: "#00ffffff"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 0
                anchors.rightMargin: 0

                WarningIndicator {
                    id: warningIndicator
                    width: 90
                    radius: 0
                    border.color: "#484848"
                    border.width: 2
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    textHeight: 24
                    warText: "ZONE\nTEMP"
                }

                TempSlider {
                    id: tempSlider
                    anchors.left: warningIndicator.right
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 5
                    anchors.leftMargin: 2
                    anchors.bottomMargin: 2
                    anchors.topMargin: 2
                }
            }
        }
    }

}







/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:4}D{i:6}D{i:5}D{i:3}D{i:8}D{i:9}D{i:7}D{i:2}D{i:1}
}
##^##*/
