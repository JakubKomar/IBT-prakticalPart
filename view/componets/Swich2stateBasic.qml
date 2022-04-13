/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:39:01
  * @ Description: swich basic clickeble
 */

import QtQuick
import QtQuick.Controls

Button {
    id:swich2stateWarning
    property alias swich2state:swich2state
    width: 150
    height: 150
    Swich2state {
        id: swich2state
        anchors.fill: parent
    }

}

/*##^##
Designer {
    D{i:0;height:152;width:149}D{i:1}
}
##^##*/
