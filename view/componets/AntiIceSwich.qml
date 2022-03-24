/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:13:23
  * @ Description: anti ice swich - windows
 */

import QtQuick 
import QtQuick.Controls 

Item {
    id:antiIceSwich
    width: 150
    height: 197
    property alias swich2stateWarning: swich2stateWarning
    signal clicked()
    property bool onTogled:false
    Swich2stateWarning {
        id: swich2stateWarning
        anchors.fill: parent
        swich2state.pasive1Bc: onTogled?Styles.green:"transparent"
        swich2state.active1Bc: onTogled?Styles.green:Styles.blueDark
        togled: false
        warningIndicator.warText: "OVERHEAT"
        description: "SIDE"
        onClicked:{
            antiIceSwich.clicked()
        }
    }

}

/*##^##
Designer {
    D{i:0;height:197;width:150}D{i:1}
}
##^##*/
