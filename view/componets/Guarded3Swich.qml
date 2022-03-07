import QtQuick 2.0

Item {
    id:guarded3Swich
    width: 346
    height: 111
    property alias guard: guard
    property alias swich3pos: swich3pos
    Swich3pos {
        id: swich3pos
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 41
        anchors.bottomMargin: 11
        anchors.topMargin: 9
    }

    Guard {
        id: guard
        anchors.fill: parent
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:1}D{i:2}
}
##^##*/
