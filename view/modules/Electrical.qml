import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:tempControl
    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"

    Connections{
        target:ControlElectrical
    }

    Connections{
        target:RenderElectrical

    }
}







/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:1}D{i:2}
}
##^##*/
