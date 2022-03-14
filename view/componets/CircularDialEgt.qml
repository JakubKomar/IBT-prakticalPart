import QtQuick


Item {
    id:circularDialEgt
    width: 210
    height: 210
    property double value: 10
    property double warVal:925
    property double kriticVal: 950
    property double maxVal: 950
    property double minVal: 0
    property bool disVal: value<disValue
    property double disValue:95
    CircularDial {
        id: circularDial
        anchors.fill: parent
        redValEneb: true
        orangeValEneb: true
        orangeVal: warVal
        redVal: kriticVal
        maxValue: maxVal
        strWidth: 17
        value:{
            if(circularDialEgt.value<disValue)
                minVal
            else
                circularDialEgt.value
        }

        Text {
            id: text1
            x: 163
            y: 51
            color: "#ffffff"
            text: circularDial.redVal
            font.pixelSize: 12
        }

        Text {
            id: text2
            x: 175
            y: 155
            color: "#ffffff"
            text: minVal
            font.pixelSize: 12
        }
    }

    DigitalVal {
        id: digitalVal
        x: 71
        y: 75
        width: 131
        height: 60
        value: circularDialEgt.value
        fixedVal: 0
        texHeight: 50
        disableVal: disVal
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:2;height:220;width:220}D{i:2}D{i:3}D{i:1}D{i:4}
}
##^##*/
