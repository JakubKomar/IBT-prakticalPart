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

        Swich2noStateGen {
            id: swich2noStateGen
            x: 229
            y: 132
            width: 99
            height: 88
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:2}D{i:3}D{i:1}
}
##^##*/
