/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 21:05:22
  * @ Description: state indicator - not used
 */

import QtQuick

Item {
    id:stateIndicator

    implicitWidth: 140
    implicitHeight: 80

    property alias status:indicator.value

    property alias indicator: indicator

    height: 65

    Indicator{
       id: indicator
       anchors.fill: parent
       description: "ON"
       value: 0
       onColor: "#2aff00"
       onColorBc: "#028901"
       offColorBc: "#001f04"
       offColor: "#002d04"
    }
}
