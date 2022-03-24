/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:37:06
  * @ Description: tank graphic representation - schema use
 */

import QtQuick
import QtQuick.Shapes

Item {
    id:tank
    property double maxValue:8000
    property double value: 5000
    property double alfa: 80
    property double beta: 85
    property bool mirror:true
    width: 640
    height: 484
    layer.samples: 8
    layer.enabled: true
    antialiasing: true

    transform: [
        Scale{xScale: mirror?-1:1
        },
        Translate { x: mirror?width:0 }
        ]

    Shape {
        id:shape
        anchors.fill: parent
        anchors.rightMargin: 2
        anchors.leftMargin: 2
        anchors.bottomMargin: 2
        anchors.topMargin: 2

        ShapePath {
            strokeColor: "transparent"
            strokeWidth: 0
            fillColor: "#000a10"
            startX: 0; startY: shape.height
            PathLine { x:shape.width  ;y:shape.height}
            PathLine { x:shape.width  ;y:(shape.height/maxValue)*(maxValue-value)}
            PathLine { x:0   ;y:shape.height/maxValue*(maxValue-value)}
            PathLine { x:0  ;y:shape.height}
        }
        ShapePath {
            strokeColor: "transparent"
            strokeWidth: 0
            fillColor: "black"
            startX: 0; startY: shape.height
            PathLine { x:shape.width  ;y:shape.height}
            PathLine { x:shape.width  ;y:shape.height-shape.width/Math.tan(toRadians(alfa))}
            PathLine { x:0  ;y:shape.height}
        }

        ShapePath {
            strokeColor: "transparent"
            strokeWidth: 0
            fillColor: "black"
            startX: 0; startY: shape.width/Math.tan(toRadians(beta))
            PathLine { x:shape.width  ;y:0}
            PathLine { x:0  ;y:0}
            PathLine { x:0  ;y: shape.width/Math.tan(toRadians(beta))}
        }
        ShapePath {
            capStyle: ShapePath.RoundCap
            joinStyle:  ShapePath.RoundJoin
            strokeWidth: 1
            strokeColor: "white"
            fillColor: "transparent"
            startX: 0; startY: shape.height
            PathLine { x: shape.width; y: shape.height-shape.width/Math.tan(toRadians(alfa)) }
            PathLine { x: shape.width; y: 0 }
            PathLine { x: 0; y: shape.width/Math.tan(toRadians(beta)) }
            PathLine { x: 0; y: shape.height }
        }
    }
    function toDegrees (angle) {
      return angle * (180 / Math.PI);
    }
    function toRadians (angle) {
      return angle * (Math.PI / 180);
    }
}



/*##^##
Designer {
    D{i:0;height:654;width:522}D{i:4}D{i:9}D{i:13}D{i:17}D{i:3}
}
##^##*/
