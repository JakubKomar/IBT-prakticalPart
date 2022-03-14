import QtQuick
import QtQuick.Shapes

Rectangle {
    id:circularDialN
    color: "#000000"

    width: 220
    height:  width
    property int radiusIndicator:115
    property double startAng:50
    property double endAng:310
    property double setVal :66.6
    property double n1 :66.6
    property double n2 :102
    property double minVal:0
    property double maxVal:104

    property bool motoring:true
    property bool engFail:true
    property bool reverser:true
    property bool reverserGreen:true
    property bool fire:false
    property double safeVal:{
        if(n1<minVal)
            minval
        else if(n1>maxVal)
            maxVal
        else
            n1
    }
    property double safeSetVal:{
        if(setVal<minVal)
            minval
        else if(setVal>maxVal)
            maxVal
        else
            setVal
    }

    property bool setValEneb:true

    CircularDial {
        id: circularDial
        anchors.fill: parent
        orangeValEneb: true
        redVal: 105
        value: n2
        orangeVal: 103
        maxValue: 105
        fillCol: "#f8f8f8"
        sweepAng: 257
        startAng: 51
        anchors.rightMargin: 19
        anchors.leftMargin: 19
        anchors.bottomMargin: 19
        anchors.topMargin: 19
        strWidth: 5
    }

    CircularDialV2 {
        id: circularDialV2
        anchors.fill: parent
        redValEneb: true
        orangeVal: 999
        endRadiusOfScale: 16
        numRadiusOfScale: 34
        startRadiusOfScale: 26
        numScale: 10
        maxValue: 103.3
        value: n1
        Rectangle{
            id:targetIndicator
            x:parent.width/2-width/2 + Math.cos(toRadians(startAng+((endAng-startAng)/(maxVal-minVal))*safeSetVal))*radiusIndicator
            y:parent.height/2-height/2 +Math.sin(toRadians(startAng+((endAng-startAng)/(maxVal-minVal))*safeSetVal))*radiusIndicator
            height: 20
            color: "#b000ff"
            visible: setValEneb
            width: height
            radius:height/2
            border.color: "#ffffff"
        }

        Rectangle {
            id: blackBc
            x: 58
            width: 162
            height: 120
            color: "#000000"
            anchors.verticalCenter: parent.verticalCenter

            Rectangle {
                id: dataBorder
                y: 0
                color: "#00ffffff"
                radius: 12
                border.color: "#ffffff"
                anchors.fill: parent

                Text {
                    id: digiValN1
                    x: 37
                    y: -1
                    width: 125
                    height: 53
                    color: "#ffffff"
                    text: n1.toFixed(1)
                    anchors.right: parent.right
                    font.pixelSize: 53
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 4
                }

                Text {
                    id: text2
                    x: 0
                    y: 8
                    width: 36
                    height: 44
                    color: "#00b2ff"
                    text: qsTr("N1")
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Text {
                    id: text3
                    x: 99
                    y: 98
                    width: 63
                    height: 20
                    color: "#00b2ff"
                    text: qsTr("N2")
                    font.pixelSize: 12
                    horizontalAlignment: Text.AlignHCenter
                }

                Text {
                    id: digiValN2
                    x: 100
                    y: 57
                    width: 62
                    height: 31
                    color: "#d3d3d3"
                    text: n2.toFixed(1)
                    anchors.right: parent.right
                    font.pixelSize: 26
                    horizontalAlignment: Text.AlignHCenter
                    anchors.rightMargin: 1
                }

                Text {
                    id: indiFire1
                    visible:fire
                    x: 0
                    y: 58
                    width: 99
                    height: 36
                    color: "#ff0000"
                    text: qsTr("FIRE")
                    font.pixelSize: 39
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.styleName: "tučné"
                    font.family: "Verdana"
                }

                Text {
                    id: indiReverser
                    x: 1
                    y: 58
                    visible: reverser||reverserGreen
                    width: 99
                    height: 18
                    color: reverserGreen?"#00ff00":"#ffae00"
                    text: qsTr("REVERSER")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Verdana"
                }

                Text {
                    id: indiMotoring
                    x: 1
                    y: 76
                    visible:motoring
                    width: 99
                    height: 18
                    color: "#ffffff"
                    text: qsTr("MOTORING")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Verdana"
                }

                Text {
                    id: indiEngFail
                    x: 1
                    y: 95
                    visible:engFail
                    width: 99
                    height: 18
                    color: "#ffae00"
                    text: qsTr("ENGINE FAIL")
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Verdana"
                    font.styleName: "tučné"
                }

                Rectangle {
                    id: brd1
                    x: 99
                    y: 52
                    width: 1
                    height: 67
                    color: "#00ffffff"
                    border.color: "#ffffff"
                }

                Rectangle {
                    id: brd2
                    y: 52
                    height: 1
                    color: "#ffffff"
                    border.color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                }

                Rectangle {
                    id: brd3
                    x: 33
                    y: 1
                    width: 1
                    height: 51
                    color: "#00ffffff"
                    border.color: "#585858"
                }

                Rectangle {
                    id: brd4
                    x: 100
                    y: 94
                    width: 61
                    height: 1
                    color: "#00ffffff"
                    border.color: "#585858"
                }
            }
        }
    }

    function toRadians (angle) {
        return angle * (Math.PI / 180);
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5;height:220;width:220}D{i:1}D{i:3}D{i:6}D{i:7}D{i:8}D{i:9}
D{i:10}D{i:11}D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:5}D{i:4}D{i:2}
}
##^##*/
