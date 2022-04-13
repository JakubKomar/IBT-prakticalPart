/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:57:11
  * @ Modified time: 2022-03-27 19:05:19
  * @ Description:  Arow graphic representation
 */

import QtQuick
import QtQuick.Shapes
Item {
    width: 20
    height: 20
    layer.samples: 8
    layer.enabled: true
    antialiasing: true
    property color col:Styles.blue
    Rectangle {
        id: rectangle
        color: "#000000"
        border.color: "#00000000"
        anchors.fill: parent
    }

    Shape{
        id:arrow
        anchors.fill: parent
        ShapePath {
            id:stroke
           strokeWidth: 4
           strokeColor: "transparent"
           fillColor: col
           startX:  arrow.width/2; startY: arrow.height
           PathLine { x: arrow.width; y: 0 }
           PathLine { x: 0; y:0}
           PathLine { x: stroke.startX; y: stroke.startY }
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5;height:20;width:20}D{i:1}D{i:3}D{i:2}
}
##^##*/
