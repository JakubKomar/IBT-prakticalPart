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

        GuardedSwich{ x: 390;y: 128}

        Swich2stateAlt {
            id: swich2stateAlt
            x: 226
            y: 212
            width: 98
            height: 52
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.75;height:480;width:640}D{i:2}D{i:3}D{i:1}
}
##^##*/
