import QtQuick
import QtQuick.Controls
import "../componets"
Item {
    Rectangle {
        id: rectangle
        color: "#000000"
        anchors.fill: parent
        anchors.rightMargin: -465
        anchors.bottomMargin: -122

        VerticaIndicatorDouble {
            id: verticaIndicatorDouble
            x: 241
            y: 219
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2}D{i:1}
}
##^##*/
