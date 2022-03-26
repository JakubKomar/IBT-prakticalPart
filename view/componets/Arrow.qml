import QtQuick
import QtQuick.Shapes
Item {
    width: 20
    height: 20
    layer.samples: 8
    layer.enabled: true
    antialiasing: true
    property color col:Styles.blue
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
    D{i:0;height:20;width:20}D{i:2}D{i:1}
}
##^##*/
