import QtQuick 2.0

Rectangle {
    id: horizontalIndicator
    width: 246
    height: 42
    color: "#000000"
    border.color: "#00000000"
    property alias digitalVal: digitalVal
    antialiasing: true
    layer.samples: 8
    layer.enabled: true
    property bool inverted: false
    property double minValue:0
    property double maxValue:100
    property double value:60
    property int fixedDecimals:0

    property bool minKritikValEneb: false
    property double minKritikVal:minValue
    property bool maxKritikValEneb: false
    property double maxKritikVal:maxValue
    Rectangle {
        id: rectangle
        y: 9
        width: 43
        height: 32
        color: "#00ffffff"
        radius: 4
        border.color: "#ffffff"
        border.width: 2
        anchors.horizontalCenterOffset: 1
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: digitalVal
            color: "#ffffff"
            text: value.toFixed(fixedDecimals)
            anchors.fill: parent
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }

    Rectangle {
        id: backGround
        height: 13
        color: "#2b2b2b"
        radius: 4
        border.color: "#ffffff"
        border.width: 2
        anchors.left: parent.left
        anchors.right: parent.right
        clip: true
        rotation: inverted?180:0
        anchors.rightMargin: 5
        anchors.leftMargin: 5

        Rectangle {
            id: filed
            color: "#00282828"
            radius: 2
            border.color: "#00000000"
            anchors.fill: parent
            anchors.rightMargin: 1
            anchors.leftMargin: 1
            anchors.bottomMargin: 2
            anchors.topMargin: 2

            Rectangle {
                id: indicator
                color: inCritical()?"red":"#0069ff"
                radius: 4
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0

                width:{
                    if((parent.width/(maxValue-minValue))*value>parent.width)
                        parent.width
                    else
                        (parent.width/(maxValue-minValue))*value
                }
            }

            Rectangle {
                id: rightStop
                x: (parent.width/(maxValue-minValue))*maxKritikVal-2
                width: 2
                color: "#c80000"
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                visible: maxKritikValEneb
            }
            Rectangle {
                id: leftStop
                x: (parent.width/(maxValue-minValue))*minKritikVal+2
                width: 2
                color: "#c80000"
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.topMargin: 0
                anchors.bottomMargin: 0
                visible: minKritikValEneb
            }
        }
    }


    Text {
        id: rightValue
        x: 223
        y: 19
        color: "#a3a3a3"
        text: inverted?minValue:maxValue
        anchors.right: parent.right
        font.pixelSize: 12
        anchors.rightMargin: 5
    }

    Text {
        id: leftValue
        x: 217
        y: 19
        color: "#a3a3a3"
        text: inverted?maxValue:minValue
        anchors.left: parent.left
        font.pixelSize: 12
        anchors.leftMargin: 5
    }
    function inCritical(){

        if(minKritikValEneb && (value<minKritikVal))
            return true
        else if (maxKritikValEneb && (value>maxKritikVal))
            return true
        else
            return false
    }



}

/*##^##
Designer {
    D{i:0;formeditorZoom:2;height:67;width:246}D{i:2}D{i:1}D{i:5}D{i:6}D{i:7}D{i:4}D{i:3}
D{i:8}D{i:9}
}
##^##*/
