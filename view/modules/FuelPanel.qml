/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:56:16
  * @ Modified time: 2022-04-13 20:56:17
  * @ Description: fuel dials panel 
 */

import QtQuick 
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
        low: false
        inbalance: false
        isCenterTank: false
        circularDialV2.warningTogle: false
        circularDialV2.errorTogle: false
        value: 2009.4
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
        low: false
        inbalance: false
        config: false
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
        low: false
        config: false
        inbalance: false
        isCenterTank: false
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
        function onSetWarn(name, val){
            switch(name){
                case "centerConfig":{
                    if(val)
                        centerTank.config=true
                    break;
                }
                case "centerConfigEx":{
                    if(val)
                        centerTank.config=false
                    break;
                }
                case "leftLow":{
                    leftTank.low=val
                    break;
                }
                case "rightLow":{
                    rightTank.low=val
                    break;
                }
                case "imbal":{
                    if(val){
                        leftTank.inbalance=true
                        rightTank.inbalance=true
                    }
                    break;
                }
                case "imbalEx":{
                    if(val){
                        rightTank.inbalance=false
                        leftTank.inbalance=false
                    }
                    break;
                }
                default:{}
            }
        }
    }

}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.75;height:224;width:648}D{i:1}D{i:2}D{i:3}D{i:4}
}
##^##*/
