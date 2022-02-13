import QtQuick
import QtQuick.Shapes

Item {
    id: circularDial
    width: 180
    height: width

    Shape{
        id:circle
        anchors.fill: parent
        layer.enabled: true
        layer.samples: 12

        ShapePath{
            id:path
            strokeColor: "#7e7e7e"
            fillColor:"transparent"
            strokeWidth:20
            capStyle: ShapePath.RoundCap

            PathAngleArc{
                radiusX: (circularDial.width/2)-(path.strokeWidth/2)
                radiusY: (circularDial.height/2)-(path.strokeWidth/2)
                centerX: circularDial.width/2
                centerY: circularDial.height/2
                startAngle: 40

                sweepAngle: 280
            }
        }

    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.5}D{i:2}D{i:1}
}
##^##*/
