import QtQuick
Item {
    id: rectangle1
    width: 672
    height: 30
    property string description: "ENGINE CONTROLS"

    property color lineCol:"gray"
    TextCust {
        id: text4
        color: Styles.blueDark
        text:description
        level:2
        anchors.fill: parent
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.capitalization: Font.AllUppercase

        HalfTransparentBorder {
            id: halfTransparentBorder
            y: 29
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            grad2: lineCol
            anchors.bottomMargin: 1
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }
    }



}

/*##^##
Designer {
    D{i:0;height:30;width:318}D{i:2}D{i:1}
}
##^##*/
