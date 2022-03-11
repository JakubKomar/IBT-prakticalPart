import QtQuick 2.0

Item {
    id:circularDialEgt
    width: 210
    height: 210
    property double value: 10
    CircularDial {
        id: circularDial
        anchors.fill: parent
        strWidth: 17
        value: circularDialEgt.value
    }

    DigitalVal {
        id: digitalVal
        x: 71
        y: 75
        width: 131
        height: 60
        value: circularDialEgt.value
    }

}

/*##^##
Designer {
    D{i:0;height:210;width:210}D{i:1}D{i:2}
}
##^##*/
