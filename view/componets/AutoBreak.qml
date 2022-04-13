/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:57:20
  * @ Description: autobrake swich 5 pozition
 */

import QtQuick
import QtQuick.Shapes
import QtQuick.Controls

Rectangle {
    id: engineStarter
    width: 109
    height: 160
    clip: true
    color: "#ffffff"
    radius: 0
    property int  itemOfset: width/2
    property int position:1
    signal leftEvent
    signal rightEvent
    Item {
        id: tape
        height: 401
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.topMargin: -itemOfset*position
        anchors.rightMargin: 0
        anchors.leftMargin: 0

        TextCust {
            id: text1
            y: engineStarter.height/2 +itemOfset*0 -this.height/2

            text: "RTO"
            color:position==0?"orange":"black"
            font.letterSpacing: -0.9
            anchors.horizontalCenter: parent.horizontalCenter
            level: 2
        }

        TextCust {
            id: text2
            y: engineStarter.height/2 +itemOfset*1 -this.height/2
            color: "black"
            text: "OFF"
            font.letterSpacing: -0.9
            anchors.horizontalCenter: parent.horizontalCenter
            level: 2
        }

        TextCust {
            id: text3
            y: engineStarter.height/2 +itemOfset*2 -this.height/2
            text: "1"
            color: position==2?Styles.blue:"black"
            font.letterSpacing: -0.9
            anchors.horizontalCenter: parent.horizontalCenter
            level: 2
        }

        TextCust {
            id: text4
            y: engineStarter.height/2 +itemOfset*3 -this.height/2
            text: "2"
            color: position==3?Styles.blue:"black"
            font.letterSpacing: -0.9
            anchors.horizontalCenter: parent.horizontalCenter
            level: 2
        }

        TextCust {
            id: text6
            y: engineStarter.height/2 +itemOfset*4 -this.height/2
            color: position==4?Styles.blue:"black"
            text: "3"
            font.letterSpacing: -0.9
            level: 2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        TextCust {
            id: text7
            y: engineStarter.height/2 +itemOfset*5 -this.height/2
            color: position==5?Styles.blue:"black"
            text: "max"
            font.letterSpacing: -0.9
            level: 2
            anchors.horizontalCenter: parent.horizontalCenter
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
            orientation: Gradient.Vertical
        }
    }

    Rectangle {
        id: rectangle
        width: 20
        height: 3
        color: "#00a8ff"
        anchors.verticalCenter: parent.verticalCenter
    }

    Rectangle {
        id: rectangle1
        width: 23
        height: 3
        color: "#00a8ff"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 0
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
            if((startY>(engineStarter.height/2)) && (mouseY<(engineStarter.height/2))){
                rightEvent()

            }
            else if((startY<(engineStarter.height/2)) && (mouseY>(engineStarter.height/2))){
                leftEvent()
            }
            else if((startY>(engineStarter.height/2)) && (mouseY>(engineStarter.height/2)))
                rightEvent()
            else if((startY<(engineStarter.height/2)) && (mouseY<(engineStarter.height/2)))
                leftEvent()

        }

    }
}



/*##^##
Designer {
    D{i:0;height:160;width:109}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:1}D{i:8}D{i:14}
D{i:15}D{i:16}
}
##^##*/
