/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:58:16
  * @ Description: n engine trust indicator
 */

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
        fillCol: Styles.green
        sweepAng: 257
        startAng: 51
        anchors.rightMargin: 20
        anchors.leftMargin: 20
        anchors.bottomMargin: 20
        anchors.topMargin: 20
        strWidth: 5
    }

    CircularDialV2 {
        id: circularDialV2
        anchors.fill: parent
        redValEneb: true
        orangeVal: 999
        endRadiusOfScale: 16
        numRadiusOfScale: 37
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
                width: 144
                height: 108
                color: "#00ffffff"
                radius: 12
                border.color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter

                TextCust {
                    id: indiFire1
                    y: 58
                    visible:fire
                    color: "#ff0000"
                    text: qsTr("FIRE")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    level:1
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                }

                TextCust {
                    id: indiReverser
                    y: 63
                    visible: (reverser||reverserGreen )&& !fire
                    color: Styles.green
                    text: qsTr("REVERSER")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    font.letterSpacing: 0
                    level:3
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottomMargin: 39
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                }

                TextCust {
                    id: indiMotoring
                    y: 81
                    visible:motoring&& !fire
                    color: "#ffffff"
                    text: qsTr("MOTORING")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    font.letterSpacing: 0
                    level:3
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottomMargin: 21
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                }

                TextCust {
                    id: indiEngFail
                    y: 98
                    visible:engFail&& !fire
                    color: "orange"
                    text: qsTr("ENGINE FAIL")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.bottom: parent.bottom
                    font.letterSpacing: 0
                    level:3
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottomMargin: 4
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                }

                Rectangle {
                    id: brd2
                    y: 48
                    height: 1
                    color: "#ffffff"
                    border.color: "#00000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                }

                Rectangle {
                    id: rectangle
                    x: 8
                    y: 1
                    width: 1
                    height: 47
                    color: "#ffffff"
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Item {
                    id: item1
                    y: 1
                    width: 72
                    height: 48
                    anchors.left: parent.left
                    anchors.leftMargin: 0

                    TextCust {
                        id: digiValN1
                        x: 14
                        color: "#ffffff"
                        text: n1.toFixed(1)
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.right: parent.right
                        level:2
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                        anchors.verticalCenterOffset: 10
                    }

                    TextCust {
                        id: text2
                        y: 0
                        color: Styles.blue
                        text: qsTr("N1")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        level:3
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.rightMargin: 0
                        anchors.leftMargin: 0
                    }
                }

                Item {
                    id: item2
                    x: 76
                    y: 1
                    width: 72
                    height: 48
                    anchors.right: parent.right
                    anchors.rightMargin: 0

                    TextCust{
                        id: text3
                        y: 0
                        color: Styles.green
                        text: qsTr("N2")
                        anchors.left: parent.left
                        anchors.right: parent.right
                        level:3
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                    }

                    TextCust {
                        id: digiValN2
                        color: "#d3d3d3"
                        text: n2.toFixed(1)
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.right: parent.right
                        level:2
                        horizontalAlignment: Text.AlignHCenter
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        anchors.verticalCenterOffset: 10
                    }
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
    D{i:0;height:250;width:250}D{i:1}D{i:3}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}D{i:13}
D{i:14}D{i:12}D{i:16}D{i:17}D{i:15}D{i:5}D{i:4}D{i:2}
}
##^##*/
