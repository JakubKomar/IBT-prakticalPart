import QtQuick 2.0
import "../componets"
Item {
    id: rectangle1
    width: 648
    height: 224


    CircularDialFuel {
        id: leftTank
        x: 60
        anchors.right: centerTank.left
        anchors.top: parent.top
        warningValue: 1000
        circularDialV2.warningTogle: false
        circularDialV2.errorTogle: false
        value: 7000
        circularDialV2.bigStep: 1000
        circularDialV2.maxValue: 8620
        desText: "Left"
        anchors.topMargin: 7
        anchors.rightMargin: 2
    }

    CircularDialFuel {
        id: centerTank
        x: 312
        y: 50
        anchors.top: parent.top
        circularDialV2.bigStep: 2800
        circularDialV2.maxValue: 28580
        desText: "Center"
        value: 10000
        anchors.topMargin: 7
        anchors.horizontalCenter: parent.horizontalCenter
    }

    CircularDialFuel {
        id: rightTank
        x: 534
        anchors.left: centerTank.right
        anchors.top: parent.top
        warningValue: 1000
        value: 7000
        circularDialV2.bigStep: 1000
        circularDialV2.maxValue: 8620
        desText: "Right"
        anchors.topMargin: 7
        anchors.leftMargin: 2
    }

    Connections{
        target: FuelDialsRender

        function onSetTank(name,value){
            switch(name){
            case "left":{
                leftTank.value = value
                break;
            }
            case "center":{
                centerTank.value=value
                break;
            }
            case "right":{
                rightTank.value=value
                break;
            }
            default:{}
            }
        }

    }

}



/*##^##
Designer {
    D{i:0;height:224;width:648}D{i:1}D{i:2}D{i:3}D{i:4}
}
##^##*/
