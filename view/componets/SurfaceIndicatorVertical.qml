/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:31:09
  * @ Description: flaps pozition indicator
 */

import QtQuick
import QtQuick.Shapes
Item {
    id:surfaceIndicatorVertical
    width: 180
    height: 72

    property double minVal:-1
    property double maxVal:1
    property double safeVal:{val<minVal?minVal:val>maxVal?maxVal:val}
    property double val:-0.75
    property int shapeHeight : 3
    property string description:"elevator"
    property double noneOscilateVal: {
        if(Math.abs(safeVal)<0.01)
            0
        else
            safeVal
    }
    Item{
        id:inerBorder
        x: 76
        y: -73
        width:28
        height:parent.width-shapeHeight*2
        antialiasing: true
        layer.enabled: true
        layer.samples: 8
        rotation: 90
        Shape{
            ShapePath{
                strokeColor: "white"
                fillColor: "transparent"
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: inerBorder.width/2
                startY:0
                PathLine{
                    x:inerBorder.width/2
                    y:inerBorder.height
                }
            }
            ShapePath{
                strokeColor: "white"
                fillColor: "transparent"
                strokeWidth: 2
                capStyle: ShapePath.RoundCap
                startX: 0
                startY:0
                PathLine{
                    x:inerBorder.width
                    y:0
                }
            }
            ShapePath{
                strokeColor: "white"
                fillColor: "transparent"
                strokeWidth: 2
                capStyle: ShapePath.RoundCap
                startX: 0
                startY:inerBorder.height
                PathLine{
                    x:inerBorder.width
                    y:inerBorder.height
                }
            }
            ShapePath{
                strokeColor: "white"
                fillColor: "transparent"
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: inerBorder.width/4
                startY:inerBorder.height/2
                PathLine{
                    x:inerBorder.width/4*3
                    y:inerBorder.height/2
                }
            }
            ShapePath{
                strokeColor:fillColor
                fillColor: "#00b9ff"
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: 0
                startY:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)+shapeHeight
                PathLine{
                    x:inerBorder.width/2
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)
                }
                PathLine{
                    x:0
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)-shapeHeight
                }
                PathLine{
                    x:0
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)+shapeHeight
                }

            }
            ShapePath{
                strokeColor:fillColor
                fillColor: "#00b9ff"
                strokeWidth: 1
                capStyle: ShapePath.RoundCap
                startX: inerBorder.width
                startY:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)+shapeHeight
                PathLine{
                    x:inerBorder.width
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)-shapeHeight
                }
                PathLine{
                    x:inerBorder.width/2
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)
                }
                PathLine{
                    x:inerBorder.width
                    y:inerBorder.height-((inerBorder.height)/(maxVal-minVal))*(safeVal-minVal)+shapeHeight
                }
            }
        }
    }

    Rectangle {
        id: digiValBorder
        y: 27
        width: 50
        height: 44
        color: "#00ffffff"
        radius: 8
        border.color: "#00ffffff"
        border.width: 1
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter

        TextCust {
            id: descr
            color: "#0097ff"
            text: description
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            level:3
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        TextCust {
            id: digitalVal
            y: 22
            color: "#ffffff"
            text: noneOscilateVal.toFixed(2)
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            level:2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }
}

/*##^##
Designer {
    D{i:0;height:75;width:180}D{i:3}D{i:5}D{i:7}D{i:9}D{i:11}D{i:15}D{i:2}D{i:1}D{i:20}
D{i:21}D{i:19}
}
##^##*/
