import QtQuick
import QtQuick.Controls
import QtQuick.Shapes

Rectangle {
    id:swich2state
    color: "#000000"
    border.color: "#484848"
    border.width: 1
    antialiasing: true
    layer.samples: 8
    layer.enabled: true

    width: 135
    implicitWidth: 150
    implicitHeight: 150
    property string description: "Desc\nMultiline"

    property string onText:"ON"
    property color onColor: "#02ff00"
    property alias onTxtAlias: onTxt

    property string offText:"OFF"
    property color offColor: "#acacac"
    property alias offTxtAlias: offTxt


    property bool togled:false
    property int position: togled?1:0

    Rectangle {
        id: status
        height: 50
        color: "#00ae5b5b"
        border.color: "#484848"
        border.width: 0
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        Shape{
            id:shape
            anchors.fill:parent
            ShapePath{
                fillColor: !togled?"transparent":Styles.blueDark
                strokeColor:"transparent"
                startX: 1; startY:1
                PathLine { x: shape.width*0.58; y: 1}
                PathLine { x: shape.width*0.42; y: shape.height-1 }
                PathLine { x: 1; y: shape.height-1 }
                PathLine { x:1; y: 1 }
            }
        }

        Shape{
            id:shape1
            anchors.fill:parent
            ShapePath{
                fillColor: togled?"transparent":Styles.blueDark
                strokeColor: "transparent"
                startX: shape.width-1; startY:1
                PathLine { x: shape.width-1; y: shape.height-1}
                PathLine { x: shape.width*0.42; y: shape.height-1}
                PathLine { x: shape.width*0.58; y: 1}
                PathLine { x:  shape.width-1; y: 1}
            }
        }

        TextCust {
            id: offTxt
            width: parent.width*0.5
            color: "#ffffff"
            text: offText
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.rightMargin: 0
            anchors.topMargin: 0
            anchors.bottomMargin: 0
            level:2
        }

        TextCust {
            id: onTxt
            width: parent.width*0.5
            color: "#ffffff"
            text: onText
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            anchors.leftMargin: 0
            level:2
        }

        Rectangle {
            id: rectangle
            x: 0
            y: 0
            height: 1
            color: "#484848"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 50
        color: "#00ffffff"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 50
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        anchors.leftMargin: 0

        TextCust{
            id: text2
            color: "#ffffff"
            text: qsTr(description)
            anchors.fill: parent
            level:2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: -7
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75;height:135;width:150}D{i:3}D{i:2}D{i:9}D{i:8}D{i:14}D{i:15}
D{i:16}D{i:1}D{i:18}D{i:17}
}
##^##*/
