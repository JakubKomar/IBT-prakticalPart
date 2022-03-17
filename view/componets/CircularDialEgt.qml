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

        TextCust {
            id: text1
            x: 163
            y: 51
            color: "#ffffff"
            text: circularDial.redVal
            level:3
        }

        TextCust {
            id: text2
            x: 175
            y: 155
            color: "#ffffff"
            text: minVal
            level:3
        }
    }

    DigitalVal {
        id: digitalVal
        width: 75
        height: 45
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenterOffset: 61
        anchors.horizontalCenter: parent.horizontalCenter
        value: circularDialEgt.value
        fixedVal: 0
        disableVal: disVal
    }
}



/*##^##
Designer {
    D{i:0;height:220;width:220}D{i:2}D{i:3}D{i:1}D{i:4}
}
##^##*/
