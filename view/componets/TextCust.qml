/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:35:36
  * @ Description: custume text field for styles standartization
 */

import QtQuick

Text {
    property int level:1
    styleColor: "#ffffff"
    font.capitalization: Font.AllUppercase
    font.family: "Arial"
    font.pointSize:{
        if(level==1)
            40
        else if(level==2)
            20
        else if(level==3)
            10
        else
            10
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:74;width:134}
}
##^##*/
