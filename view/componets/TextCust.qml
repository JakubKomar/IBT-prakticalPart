import QtQuick 2.0

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
    D{i:0;formeditorZoom:0.9}
}
##^##*/
