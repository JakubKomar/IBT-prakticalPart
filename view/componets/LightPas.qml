/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-28 23:33:21
  * @ Description: light intensity slector
 */

import QtQuick
import QtQuick.Shapes
import QtQuick.Controls

Rectangle {
    id: engineStarter
    width: 210
    height: 80
    clip: true
    color: "#ffffff"
    radius: 0
    property int  itemOfset: width/2*0.8
    property int position:1
    signal leftEvent
    signal rightEvent
    Item {
        id: tape
        x: 0 - position*itemOfset
        width: 356
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 0
        anchors.bottomMargin: 0

        TextCust {
            id: text1
            x: engineStarter.width/2 -this.width/2

            text: "BRIGHT"
            color:position==0?Styles.blue:"black"
            anchors.verticalCenter: parent.verticalCenter
            font.letterSpacing: -0.9
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            level: 2
        }

        TextCust {
            id: text2
            x: engineStarter.width/2 +  itemOfset   -this.width/2
            color: position==1?Styles.blue:"black"
            text: "MEDIUM"
            anchors.verticalCenter: parent.verticalCenter
            font.letterSpacing: -0.9
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            level: 2
        }

        TextCust {
            id: text3
            x:engineStarter.width/2 +itemOfset*2-this.width/2
            text: "TAKEOFF"
            color: position==2?Styles.blue:"black"
            anchors.verticalCenter: parent.verticalCenter
            font.letterSpacing: -0.9
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            level: 2
        }

        TextCust {
            id: text4
            x: engineStarter.width/2+itemOfset*3-this.width/2
            text: "CRUISE"
            color: position==3?Styles.blue:"black"
            anchors.verticalCenter: parent.verticalCenter
            font.letterSpacing: -0.9
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            level: 2
        }
        TextCust {
            id: text5
            x: engineStarter.width/2+itemOfset*4-this.width/2
            text: "NIGHT"
            color: position==4?Styles.blue:"black"
            anchors.verticalCenter: parent.verticalCenter
            font.letterSpacing: -0.9
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            level: 2
        }
    }/*
    Shape{
        id:effect
        anchors.fill: parent
        ShapePath{
            id:circleBorder
            strokeColor: "red"
            fillGradient: RadialGradient {
                centerX: effect.width/2; centerY: effect.height/2
                centerRadius: effect.width*0.8
                focalX: centerX; focalY: centerY
                GradientStop { position: 0; color: "transparent" }
                GradientStop { position: 0.45; color: "transparent" }
                GradientStop { position: 0.60; color: "black" }
                GradientStop { position: 1; color: "black" }
            }
            strokeWidth:1
            capStyle: ShapePath.RoundCap

            PathAngleArc{
                radiusX: effect.width
                radiusY: effect.height

                centerX: effect.width/2
                centerY: effect.height/2
                startAngle: 0
                sweepAngle: 360
            }
        }
    }*/

    Rectangle {
        id: efect2
        color: "#ffffff"
        anchors.fill: parent
        anchors.rightMargin: 0
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "black"
            }
            GradientStop {
                position: 0.3
                color: "transparent"
            }
            GradientStop {
                position: 0.7
                color: "transparent"
            }

            GradientStop {
                position: 1
                color: "black"
            }
            orientation: Gradient.Horizontal
        }
    }

    Rectangle {
        id: rectangle
        y: 0
        width: 3
        height: 23
        color: "#00a8ff"
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Rectangle {
        id: rectangle1
        y: 60
        width: 3
        height: 23
        color: "#00a8ff"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        property int startX:0
        property int startY:0

        onPressed: {
            startX=mouseX
            startY=mouseY
        }
        onReleased: {
            if((startX>(engineStarter.width/2)) && (mouseX<(engineStarter.width/2))){
                rightEvent()

            }
            else if((startX<(engineStarter.width/2)) && (mouseX>(engineStarter.width/2))){
                leftEvent()
            }
            else if((startX>(engineStarter.width/2)) && (mouseX>(engineStarter.width/2)))
                rightEvent()
            else if((startX<(engineStarter.width/2)) && (mouseX<(engineStarter.width/2)))
                leftEvent()

        }

    }
}

/*##^##
Designer {
    D{i:0;height:100;width:314}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:1}D{i:7}D{i:13}D{i:14}
D{i:15}
}
##^##*/
