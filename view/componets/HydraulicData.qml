import QtQuick 2.0

Rectangle {
    id: rectangle2
    y: 36
    width: 227
    height: 106
    color: "#00ffffff"
    radius: 13
    border.color: "#ffffff"
    anchors.horizontalCenter: parent.horizontalCenter

    Text {
        id: text4
        y: 27
        color: Styles.blueDark
        text: qsTr("QTY %")
        font.pixelSize: 20
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: text5
        y: 65
        color: Styles.blueDark
        text: qsTr("PRESS")
        font.pixelSize: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -1
    }

    Text {
        id: text6
        y: 0
        color:Styles.blueDark
        text: qsTr("A")
        font.pixelSize: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: -70
    }

    Text {
        id: text7
        y: 0
        width: 12
        height: 27
        color: Styles.blueDark
        text: qsTr("B")
        font.pixelSize: 20
        anchors.horizontalCenterOffset: 70
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        id: qtyB
        x: 148
        y: 27
        width: 79
        height: 27
        color: "#ffffff"
        text: qsTr("87")
        anchors.right: parent.right
        font.pixelSize: 28
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
    }

    Text {
        id: qtyA
        y: 27
        width: 85
        height: 27
        color: "#ffffff"
        text: qsTr("87")
        anchors.left: parent.left
        font.pixelSize: 28
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 0
    }

    Text {
        id: pressB
        x: 148
        y: 65
        width: 79
        height: 27
        color: "#ffffff"
        text: qsTr("2920")
        anchors.right: parent.right
        font.pixelSize: 28
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.rightMargin: 0
    }

    Text {
        id: pressA
        y: 65
        width: 85
        height: 27
        color: "#ffffff"
        text: qsTr("2940")
        anchors.left: parent.left
        font.pixelSize: 28
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.leftMargin: 0
    }
    Connections{
        target:DashBoardRender
        function onSetIndicators(name, val){
            switch(name){
                case"aPress":{
                    pressA.text=val.toFixed(0)
                    break
                }
                case"bPress":{
                    pressB.text=val.toFixed(0)
                    break
                }
                case"aQty":{
                    qtyA.text=val.toFixed(0)
                    break
                }
                case"bQty":{
                    qtyB.text=val.toFixed(0)
                    break
                }
                default:{}
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;height:106;width:227}D{i:1}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}
}
##^##*/
