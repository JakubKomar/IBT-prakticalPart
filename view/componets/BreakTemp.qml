import QtQuick 2.0

Rectangle {
    id: rectangle3
    x: 0
    width: 184
    height: 72
    color: "#000000"
    property double leftBreakTemp : 6.6
    property double rightBreakTemp : 15.2
    property double orangeVal:6
    property double redVal: 10



    Item {
        id: item1
        y: 0
        height: 73
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: 0
        anchors.rightMargin: 0

        Rectangle {
            id: rectangle
            x: 48
            y: 2
            width: 32
            height: 58
            color: "#000000"
            radius: 9
            border.color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: -21
            anchors.horizontalCenter: parent.horizontalCenter

            Rectangle {
                id: rectangle4
                y: 10
                width: 7
                height: 38
                color: "#000000"
                border.color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: -6
                clip: true
                anchors.verticalCenterOffset: 0

                Rectangle {
                    id: leftIndicator
                    height:{
                        if((((parent.height)/redVal)*leftBreakTemp)>parent.height-2)
                            parent.height-2
                        else
                            ((parent.height-2)/redVal)*leftBreakTemp
                    }
                    color: colorPickerRect(leftBreakTemp)
                    border.color: "#00000000"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 1
                    anchors.rightMargin: 1

                }
            }
        }

        Rectangle {
            id: rectangle1
            x: 83
            y: 2
            width: 32
            height: 58
            color: "#000000"
            radius: 9
            border.color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenterOffset: 21
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenterOffset: 0

            Rectangle {
                id: rectangle5
                x: 23
                y: 10
                width: 7
                height: 38
                color: "#000000"
                border.color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
                anchors.rightMargin: -6
                clip: true
                anchors.verticalCenterOffset: 0
                Rectangle {
                    id: rightIndicator
                    height:{
                        if((((parent.height)/redVal)*rightBreakTemp)>parent.height-2)
                            parent.height-2
                        else
                            ((parent.height-2)/redVal)*rightBreakTemp
                    }
                    color: colorPickerRect(rightBreakTemp)
                    border.color: "#00000000"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 1
                    anchors.rightMargin: 1

                }
            }
        }

        Rectangle {
            id: rectangle2
            x: 73
            y: 20
            width: 10
            height: 2
            color: "#ffffff"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Text {
            id: leftTemp
            x: 3
            y: 10
            width: 49
            height: 38
            color: "#ffffff"
            text: leftBreakTemp.toFixed(1)
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            font.pixelSize: 27
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 0
            anchors.verticalCenterOffset: 0
        }

        Text {
            id: rightTemp
            x: 135
            y: 10
            width: 49
            height: 42
            color: "#ffffff"
            text: rightBreakTemp.toFixed(1)
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            font.pixelSize: 27
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.rightMargin: 0
        }

        Text {
            id: text3
            x: 0
            y: 59
            width: 42
            height: 16
            color: "#00b2ff"
            text: qsTr("x100C°")
            font.pixelSize: 10
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: text4
            x: 142
            y: 59
            width: 42
            height: 16
            color: "#00b2ff"
            text: qsTr("x100C°")
            font.pixelSize: 10
            horizontalAlignment: Text.AlignHCenter
        }
    }
    function colorPicker(val){
        if(val>redVal)
            return "red"
        else if(val>orangeVal)
            return "orange"
        else
            return "white"
    }

    function colorPickerRect(val){
        if(val>redVal)
            return "red"
        else if(val>orangeVal)
            return "orange"
        else
            return "#878787"
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:6;height:72;width:184}D{i:4}D{i:3}D{i:2}D{i:7}D{i:6}D{i:5}D{i:8}
D{i:9}D{i:10}D{i:11}D{i:12}D{i:1}
}
##^##*/
