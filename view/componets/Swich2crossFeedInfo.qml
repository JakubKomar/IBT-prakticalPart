import QtQuick
import QtQuick.Controls

Button {
    id:swich2crossFeedInfo
    height: 210

    implicitWidth: 150
    implicitHeight: 200

    property bool togled: false
    property bool infoTogled: false
    width: 150


    Column {
        id: column
        anchors.fill: parent

        Swich2crossFeed{
            id: swich2crissFeed
            state:togled?"on":""
        }

        InfoIndicator {
            id: infoIndicator
            height: 60
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            description:"VAL\nOPENED"
            state:infoTogled?"on":""
        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:2}D{i:3}D{i:1}
}
##^##*/
