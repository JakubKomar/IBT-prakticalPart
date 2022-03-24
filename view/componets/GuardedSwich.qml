/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:22:10
  * @ Description: guarded basic swich
 */

import QtQuick
import QtQuick.Controls

Item {
    id: guardedSwich
    width: 250
    height: 131
    property alias swich2stateAlt: swich2stateAlt
    antialiasing: true
    layer.enabled: true
    layer.samples: 8
    property bool guarded:true


    Rectangle {
        id: swich
        color: "#424242"
        border.width: 0
        anchors.fill: parent

        Swich2stateAlt {
            id: swich2stateAlt
            anchors.fill: parent
            togled: true
            turnOffBcBorderCol: "#747474"
            turnOffTextCol: "#adadad"
            turnOffBcCol: "#3d3d3d"
            turnOnBcBorderCol: "#00b9ff"
        }
    }


    Rectangle {
        id: guard1
        color: "#2a2a2a"
        radius: 7
        border.color: "#ffffff"
        border.width: 2
        clip: true
        visible: guarded
        width: parent.width
        height: parent.height

        Text {
            id: text1
            x: 89
            y: 8
            width: 73
            height: 42
            color: "#0abcff"
            text:swich2stateAlt.textOn
            font.pixelSize: 51
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }

        Text {
            id: text2
            x: 55
            y: 31
            width: 121
            height: 85
            color: "#ffffff"
            text: qsTr("<<")
            font.letterSpacing: -30.8
            font.pixelSize: 94
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.wordSpacing: -0.1
        }

        Image {
            id: image1
            x: 182
            y: 41
            width: 60
            height: 75
            source: "../pic/locked.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: image
            x: 8
            y: 41
            width: 60
            height: 75
            source: "../pic/unlocked.svg"
            fillMode: Image.PreserveAspectFit
        }


    }



    MouseArea {
        id: mouseArea
        visible: guarded
        property int startX: 0
        property int startY: 0
        anchors.fill: parent
        anchors.rightMargin: 0
        onPressed: {console.log("Pressed")
            startX=mouseX
            startY=mouseY
        }
        onReleased:{ console.log( "Released")
            if(mouseY>-40&&mouseY<height+40)
            {
                if(startX>width/2){
                    if(mouseX<width/2){
                        console.log( "unlock")
                        guarded=false
                    }
                }
                else{
                    if(mouseX>width/2){
                        console.log( "lock")
                        guarded=true
                    }
                }
            }
            guard1.width=mouseArea.width
        }
        onPositionChanged: {console.log( "Position Changed " + mouseX + " + " + mouseY)
            if(mouseX<0)
                guard1.width=0
            else if (mouseX>mouseArea.width)
                guard1.width=mouseArea.width
            else
                guard1.width=mouseX
        }
        onClicked: console.log( "Clicked")
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:2}D{i:1}D{i:4}D{i:5}D{i:6}D{i:7}D{i:3}D{i:8}
}
##^##*/
