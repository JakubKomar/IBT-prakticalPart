import QtQuick
Item {
    id: rectangle1
    width: 672
    height: 30
    property string description: "ENGINE CONTROLS"
    TextCust {
        id: text4
        color: Styles.blueDark
        text:description
        level:2
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.capitalization: Font.AllUppercase
    }

    Rectangle {
        id: rectangle
        y: 37
        height: 1
        color: "gray"
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "transparent"
            }
            GradientStop {
                position: 0.5
                color: "#ffffff"
            }
            GradientStop {
                position: 1
                color: "transparent"
            }
            orientation: Gradient.Horizontal
        }
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.rightMargin: 0
    }

}

/*##^##
Designer {
    D{i:0;height:30;width:875}D{i:1}D{i:2}
}
##^##*/
