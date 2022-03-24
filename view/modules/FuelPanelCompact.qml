/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:10:50
  * @ Description: fuel dials panel
 */

import QtQuick 
import "../componets"

Item {
    id: rectangle1
    width: 560
    height: 334

    CircularDialFuel {
        id: leftTank
        y: 184
        width: 210
        height: 210
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        low: false
        inbalance: true
        isCenterTank: false
        circularDialV2.warningTogle: false
        circularDialV2.errorTogle: false
        value: 2009.4
        circularDialV2.bigStep: 1000
        circularDialV2.maxValue: 8620
        desText: "Left"
    }

    CircularDialFuel {
        id: centerTank
        width: 210
        height: 210
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        low: false
        inbalance: false
        config: true
        circularDialV2.bigStep: 2800
        circularDialV2.maxValue: 28580
        desText: "Center"
        value: 10000
    }

    CircularDialFuel {
        id: rightTank
        x: 250
        y: 184
        width: 210
        height: 210
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.rightMargin: 0
        low: true
        config: false
        inbalance: false
        isCenterTank: false
        value: 7000
        circularDialV2.bigStep: 1000
        circularDialV2.maxValue: 8620
        desText: "Right"
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
    D{i:0;height:380;width:487}D{i:1}D{i:2}D{i:3}D{i:4}
}
##^##*/
