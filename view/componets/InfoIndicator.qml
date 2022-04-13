/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:24:45
  * @ Description: blue info indicator
 */

import QtQuick

Item {
    id:infoIndicator

    implicitWidth: 140
    implicitHeight: 80

    property alias status:indicator.value
    property alias indicator: indicator

    property alias description: indicator.description
    property alias textHeight:indicator.textHeight
    height: 65

    Indicator{
        id: indicator
        anchors.fill: parent
        onColor: "white"
        onColorBc: "#005a94"
        offColor: "#004a7d"
        value: 1
        offColorBc: "black"
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:1.75}D{i:1}
}
##^##*/
