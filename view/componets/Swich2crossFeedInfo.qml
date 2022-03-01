import QtQuick
import QtQuick.Controls

Button {
    id:swich2crossFeedInfo
    height: 206

    implicitWidth: 150
    implicitHeight: 200

    property bool togled: false
    property bool infoTogled: false
    width: 150


    Swich2crossFeed{
        id: swich2crissFeed
        state:togled?"on":""
    }

    InfoIndicator {
        id: infoIndicator
        x: -4
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.topMargin: 147
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        description:"VAL\nOPENED"
        state:infoTogled?"on":""
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3}D{i:1}D{i:2}
}
##^##*/
