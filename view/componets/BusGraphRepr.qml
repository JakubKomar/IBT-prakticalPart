import QtQuick 2.0

Item {
    width: 180
    height: 190
    property alias warningIndicator1: warningIndicator1
    property string busText: "BUS 1"
    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 5
        border.color: "#ffffff"
        anchors.fill: parent
        clip: true

        Column {
            id: column
            x: 257
            y: 80
            anchors.fill: parent
            anchors.rightMargin: 2
            anchors.leftMargin: 2
            anchors.bottomMargin: 2
            anchors.topMargin: 2

            WarningIndicator {
                id: warningIndicator1
                width: parent.width
                height: parent.height/2
                 warText: "SOURCE\nOFF"
            }

            TextCust {
                id: text1
                width: parent.width
                height: parent.height/2
                color: "#ababab"
                text: busText
                level:2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }



        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.1}D{i:3}D{i:4}D{i:2}D{i:1}
}
##^##*/
