/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:34:21
  * @ Description: vertical indicator - temparature
 */

import QtQuick
import QtQuick.Shapes

Item {
    id: verticalIndicator
    width: 672
    height: 61
    layer.samples: 8
    antialiasing: true
    property double minVal: -60
    property double maxVal: 60
    property double value: 0
    property double stepSmall: 1
    property double stepLarge: 10
    property bool outOfRange:value<minVal||value>maxVal?true:false
    state:{
        if(outOfRange){
            "invalidValue"
        }
        else{
            ""
        }
    }
    Rectangle {
        id: idicatorScape
        height: 38
        color: "#000000"
        border.color: "#00808080"
        border.width: 2
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        Item {
            id: scaleContainer
            x: 20
            y: 0
            anchors.fill: parent
            clip: false
            anchors.rightMargin: 37
            anchors.leftMargin: 37
            anchors.bottomMargin: 3
            Shape{
                id: shape
                anchors.fill: parent
                layer.enabled: true
                layer.samples: 8
                ShapePath{
                    id: scaleBase
                    strokeWidth: 3
                    strokeColor: "white"
                    startX: 0
                    startY: shape.height
                    PathLine{
                        x: shape.width
                        y: shape.height
                    }
                }
                Repeater{
                    id: largeScale
                    model: parseInt((maxVal-minVal)/stepLarge+1)
                    delegate: Item{
                        property ShapePath s: ShapePath{
                            strokeWidth: 3
                            strokeColor: "white"
                            startX: parent.width/((maxVal-minVal)/stepLarge)*model.index
                            startY: parent.height
                            PathLine{
                                x: parent.width/((maxVal-minVal)/stepLarge)*model.index
                                y: parent.height-10
                            }
                        }
                        Component.onCompleted: {
                            shape.data.push(s)
                        }
                    }
                }
                Repeater{
                    id: smallScale
                    model: parseInt((maxVal-minVal)/stepSmall)
                    delegate: Item{
                        property ShapePath s: ShapePath{
                            strokeWidth: 1
                            strokeColor: "#c3c3c3"
                            startX: parent.width/((maxVal-minVal)*stepSmall)*model.index
                            startY: parent.height
                            PathLine{
                                x: parent.width/((maxVal-minVal)*stepSmall)*model.index
                                y: parent.height-5
                            }
                        }
                        Component.onCompleted:{
                            shape.data.push(s)
                        }
                    }
                }
            }
            Repeater{
                id: largeScaleNumbers
                model: parseInt((maxVal-minVal)/stepLarge+1)

                delegate:TextCust{
                    width: 31
                    height: 21
                    x: parent.width/((maxVal-minVal)/stepLarge)*model.index-width/2-1
                    y: 3
                    color: "white"
                    text: minVal+stepLarge*model.index
                    level:3
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
        }
        Item {
            id: digitalValue
            x: 35
            y: 21
            width: 75
            height: 39
            anchors.left: parent.left
            anchors.leftMargin:{
                if(value<minVal){
                    0
                }
                else if(value>maxVal){
                    (maxVal-minVal)*((parent.width-width)/(maxVal-minVal))
                }
                else{
                    0 +(-minVal+value)*((parent.width-width)/(maxVal-minVal))
                }
            }

            Rectangle {
                id: rectangle
                x: 0
                y: 17
                width: 75
                height: 25
                color: "black"
                border.color: "#00ffffff"
                border.width: 1

                TextCust {
                    id: digitalValueText
                    x: 0
                    y: -14
                    color: Styles.blueDark
                    text: value.toFixed(1)+" C°"
                    anchors.fill: parent
                    font.letterSpacing: -3.2
                    level:2
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }
            }
            Shape {
                 id:arrow
                 width: 11
                 height: 15
                 anchors.verticalCenterOffset: -9
                 anchors.horizontalCenterOffset: 0
                 anchors.centerIn: parent
                 ShapePath {
                     strokeWidth: 1
                     strokeColor: "gray"
                     fillColor: "#ffffff"
                     startX: 0; startY: arrow.height
                     PathLine { x: arrow.width; y: arrow.height }
                     PathLine { x: arrow.width/2; y: 0 }
                     PathLine { x: 0; y: arrow.height }
                 }
             }
        }
    }
    states: [
        State {
            name: "invalidValue"

            PropertyChanges {
                target: digitalValueText
                color: "#ff0000"
            }
        }
    ]
}


/*##^##
Designer {
    D{i:0;formeditorZoom:1.75;height:61;width:639}D{i:4}D{i:6}D{i:10}D{i:3}D{i:14}D{i:2}
D{i:18}D{i:17}D{i:20}D{i:19}D{i:16}D{i:1}
}
##^##*/
