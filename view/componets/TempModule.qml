import QtQuick 2.0

Item {
    id: item1
    x: 0
    width: 599
    height: 157
    property alias description: description
    property alias tempSlider: tempSlider
    property alias warningIndicator: warningIndicator
    property alias verticaIndicatorDouble: verticaIndicatorDouble


    Rectangle {
        id: rectangle1
        color: "#000000"
        border.color: "#00484848"
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
                    height: 90
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.leftMargin: 130
                    text2.text: "CAB"
                    text1.text: "DUC"
                }

                TextCust {
                    id: description
                    width: 110
                    color: Styles.blueDark
                    text: qsTr("CENTER")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    level:2
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.leftMargin: 0
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
                    width: 112
                    radius: 0
                    border.color: "#484848"
                    border.width: 2
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    indicator.borderWidth: 1
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    textHeight: 24
                    warText: "ZONE\nTEMP"
                }

                TempSlider {
                    id: tempSlider
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 36
                    anchors.leftMargin: 130
                    anchors.bottomMargin: 2
                    anchors.topMargin: 2
                }
            }
        }
    }

}







/*##^##
Designer {
    D{i:0;height:160;width:815}D{i:4}D{i:5}D{i:3}D{i:7}D{i:8}D{i:6}D{i:2}D{i:1}
}
##^##*/
