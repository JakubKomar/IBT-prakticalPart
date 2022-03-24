/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:32:01
  * @ Description: crosfed swich whit valve state info
 */ 

import QtQuick
import QtQuick.Controls

Button {
    id:swich2crossFeedInfo
    height: 206

    implicitWidth: 150
    implicitHeight: 200

    property bool togled: false
    property alias infoValue: infoIndicator.status
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
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:3;height:210;width:150}D{i:1}D{i:2}
}
##^##*/
