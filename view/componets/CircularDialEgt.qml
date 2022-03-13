import QtQuick


Item {
    id:circularDialEgt
    width: 210
    height: 210
    property double value: 10
    property double warVal:926
    property double kriticVal: 950
    property double maxVal: 950
    property double minVal: 0

    CircularDial {
        id: circularDial
        anchors.fill: parent
        redValEneb: true
        orangeValEneb: true
        orangeVal: warVal
        redVal: kriticVal
        maxValue: maxVal
        strWidth: 17
        value:circularDialEgt.value
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
    }
}



/*##^##
Designer {
    D{i:0;height:220;width:220}D{i:1}D{i:2}
}
##^##*/
