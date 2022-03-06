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

        GuardedSwichAlt {
            id: guardedSwichAlt
            x: 162
            y: 116
            guardCol: "#d0282828"
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.66;height:480;width:640}D{i:2}D{i:1}
}
##^##*/
