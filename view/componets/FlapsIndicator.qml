import QtQuick
import QtQuick.Shapes

Item {
    id: flapsIndicator
    width: 220
    height: 285
    property alias stateIndicator: stateIndicator
    property alias warningIndicator: warningIndicator
    property variant textArray:["UP",1,2,5,10,15,25,30,40]
    property double setVal: 0.5
    property double stateVal: 0.5
    Item {
        id: item1
        x: 0
        y: 0
        width: 220
        height: 220

        CircularDialV2 {
            id: circularDialV2
            anchors.fill: parent
            endRadiusOfScale: 1
            startRadiusOfScale: 25
            value: stateVal
            endAng: 450
            startAng: 180
            orangeVal: 1.7
            redVal: 1.4
            smallStep: 1
            hideScaleText: true
            maxValue: 1
            bigStep: 1/8

            Rectangle {
                id: rectangle
                width: 110
                height: 86
                color: "#000000"
                radius: 10
                border.color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                Text {
                    id: text1
                    y: 0
                    color: "#009bff"
                    text: qsTr("FLAPS")
                    font.pixelSize: 21
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text2
                    color: "#ffffff"
                    text: textArray[(stateVal*8).toFixed(0)]
                    anchors.verticalCenter: parent.verticalCenter
                    font.pixelSize: 38
                    anchors.verticalCenterOffset: 1
                    anchors.horizontalCenterOffset: 1
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text3
                    y: 62
                    color: "#009bff"
                    text: qsTr("Position")
                    font.pixelSize: 12
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                }
            }
        }

        Item{

            Repeater{
                id: largeScaleNums
                model: parseInt((circularDialV2.maxValue-circularDialV2.minValue)/(circularDialV2.bigStep))+1
                delegate: Text {
                    id:scaleNums
                    color:"white"
                    x:  circularDialV2.width/2 + Math.cos(toRadians(circularDialV2.startAng+(model.index * circularDialV2.difAng/((circularDialV2.maxValue-circularDialV2.minValue)/circularDialV2.bigStep))))*(circularDialV2.width/2-circularDialV2.numRadiusOfScale) - scaleNums.width/2

                    y:  circularDialV2.height/2+ Math.sin(toRadians(circularDialV2.startAng+(model.index * circularDialV2.difAng/((circularDialV2.maxValue-circularDialV2.minValue)/circularDialV2.bigStep))))*(circularDialV2.width/2-circularDialV2.numRadiusOfScale) - scaleNums.height/2
                    text:textArray[model.index]
                }
            }
        }

        Rectangle{
            id:targetIndicator
            x:parent.width/2-width/2 + Math.cos(toRadians(circularDialV2.startAng+((circularDialV2.endAng-circularDialV2.startAng)/(circularDialV2.maxValue-circularDialV2.minValue))*setVal))*(parent.width/2-this.width/2)
            y:parent.height/2-height/2 +Math.sin(toRadians(circularDialV2.startAng+((circularDialV2.endAng-circularDialV2.startAng)/(circularDialV2.maxValue-circularDialV2.minValue))*setVal))*(parent.height/2-this.height/2)
            height: 20
            color: "#b000ff"
            width: height
            radius:height/2
            border.color: "#ffffff"
        }
    }

    WarningIndicator {
        id: warningIndicator
        y: 221
        width: 111
        height: 65
        anchors.left: parent.left
        status: 0
        textHeight: 23
        warText: "LE FLAPS\nTRANSIT"
        anchors.leftMargin: 0
    }

    StateIndicator {
        id: stateIndicator
        x: 109
        y: 221
        width: 111
        height: 65
        anchors.right: parent.right
        indicator.offColorBc: "#000000"
        indicator.borderWidth: 2
        indicator.textHeight: 24
        indicator.description: "LE FLAPS\nEXT"
        anchors.rightMargin: 0
    }
    function toRadians (angle) {
        return angle * (Math.PI / 180);
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5;height:285;width:220}D{i:4}D{i:5}D{i:6}D{i:3}D{i:2}D{i:8}
D{i:7}D{i:10}D{i:1}D{i:11}D{i:12}
}
##^##*/
