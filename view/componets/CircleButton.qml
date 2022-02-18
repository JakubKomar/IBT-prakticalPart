import QtQuick
import QtQuick.Controls

Button {
    id:circleButton
    width: 90
    height: 90
    property alias text1: text1
    layer.enabled: true
    layer.samples: 8
    antialiasing: true
    property string buttText: "des"
    background: Rectangle{
        radius: width/2
        border.color: "#ffffff"
        color: "#1f1f1f"

    }

    Text {
        id: text1
        color: "#ffffff"
        text: buttText
        anchors.fill: parent
        font.letterSpacing: 0
        font.pixelSize: 26
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        lineHeight: 0.7
        font.bold: false
        font.family: "Verdana"
        font.wordSpacing: 0
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:2}D{i:2}
}
##^##*/
