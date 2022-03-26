import QtQuick 2.0

Item {
    width: 109
    height: 96
    property double volts:35
    property double amps:25.6
    property alias text: moduleDescription.description
    Rectangle {
        id: rectangle
        color: "#000000"
        radius: 10
        border.color: "gray"
        anchors.fill: parent

        ModuleDescription {
            id: moduleDescription
            y: 0
            anchors.left: parent.left
            anchors.right: parent.right
            description: "TR 1"
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        TextCust {
            id: ampVal
            y: 32
            height: 31
            color: "#ffffff"
            text: amps.toFixed(1)
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            level: 2
        }

        TextCust {
            id: ampUnits
            x: 86
            y: 32
            text: " A"
            anchors.left: ampVal.right
            anchors.leftMargin: 0
            level: 2
            color:Styles.blueDark
        }

        TextCust {
            id: voltsVal
            y: 63
            height: 31
            color: "#ffffff"
            text: volts.toFixed(0)
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            level: 2
        }

        TextCust {
            id: voltsUnits
            y: 63
            color: Styles.blueDark
            text: " V"
            anchors.left: voltsVal.right
            anchors.leftMargin: 0
            level: 2
        }

    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:2;height:99;width:109}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:1}
}
##^##*/
