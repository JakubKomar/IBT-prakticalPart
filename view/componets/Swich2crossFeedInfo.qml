import QtQuick
import QtQuick.Controls

Rectangle {
    id:swich2crossFeedInfo
    height: 205

    implicitWidth: 150
    implicitHeight: 200


    Swich2crossFeed{
        id: swich2crissFeed
    }

    InfoIndicator {
        id: infoIndicator
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.topMargin: 147
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:2}D{i:1}D{i:2}
}
##^##*/
