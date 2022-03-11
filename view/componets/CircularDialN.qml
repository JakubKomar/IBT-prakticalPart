import QtQuick
import QtQuick.Shapes

Rectangle {
    id:circularDialN
    color: "#000000"

    implicitHeight: 220
    implicitWidth:  220
    property int radiusIndicator:100
    property double startAng:50
    property double endAng:310
    property double setVal :0
    property double value :0
    property double minVal:0
    property double maxVal:100

    property double safeVal:{
        if(value<minVal)
            minval
        else if(value>maxVal)
            maxVal
        else
            value
    }
    property double safeSetVal:{
        if(setVal<minVal)
            minval
        else if(setVal>maxVal)
            maxVal
        else
            setVal
    }

    property bool setValEneb:true

    CircularDialV2 {
        id: circularDialV2
        anchors.fill: parent
        numScale: 10
        maxValue: 100
        value: circularDialN.value

        DigitalVal {
            id: digitalVal
            value: circularDialN.value
            x: 80
            y: 82
            width: 132
            height: 56
        }
        Rectangle{
            id:targetIndicator
            x:parent.width/2-width/2 + Math.cos(toRadians(startAng+((endAng-startAng)/(maxVal-minVal))*safeSetVal))*radiusIndicator
            y:parent.height/2-height/2 +Math.sin(toRadians(startAng+((endAng-startAng)/(maxVal-minVal))*safeSetVal))*radiusIndicator
            height: 20
            color: "#b000ff"
            visible: setValEneb
            width: height
            radius:height/2
            border.color: "#ffffff"
        }
    }
    function toRadians (angle) {
        return angle * (Math.PI / 180);
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:1.33;height:220;width:220}D{i:2}D{i:3}D{i:1}
}
##^##*/
