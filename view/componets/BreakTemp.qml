import QtQuick 2.0

Rectangle {
    id: rectangle3
    x: 0
    width: 201
    height: 79
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

        TextCust {
            id: leftTemp
            x: 3
            y: 10
            width: 50
            height: 38
            color: "#ffffff"
            text: leftBreakTemp.toFixed(1)
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            level: 2
            anchors.leftMargin: 0
            anchors.verticalCenterOffset: 0
        }

        TextCust {
            id: rightTemp
            x: 135
            y: 10
            width: 49
            height: 42
            color: "#ffffff"
            text: "9.2"
            anchors.verticalCenter: parent.verticalCenter
            anchors.right: parent.right
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            level: 2
            anchors.rightMargin: 0
        }

        TextCust {
            id: text3
            x: 4
            y: 57
            width: 42
            height: 16
            color: "#00b2ff"
            text: qsTr("x100C°")
            horizontalAlignment: Text.AlignHCenter
            font.capitalization: Font.MixedCase
            level: 3
        }

        TextCust {
            id: text4
            x: 156
            y: 57
            width: 42
            height: 16
            color: "#00b2ff"
            text: qsTr("x100C°")
            horizontalAlignment: Text.AlignHCenter
            font.capitalization: Font.MixedCase
            level: 3
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
    D{i:0;height:79;width:201}D{i:4}D{i:3}D{i:2}D{i:7}D{i:6}D{i:5}D{i:8}D{i:9}D{i:10}
D{i:11}D{i:12}D{i:1}
}
##^##*/
