/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-24 03:08:32
  * @ Description: doors status module
 */

import QtQuick
import QtQuick.Controls
import "../componets"

Rectangle {
    id:tempControl
    width: 1750
    height: 1060

    color: "#000000"
    border.color: "#000000"

    Connections{
        target:RenderDoor

        function onSetDoorIndicator(name,turned){
            switch(name){
            case"fwdEntry":{
                fwdEntry.togled=turned
                break;
            }
            case"fwdService":{
                fwdService.togled=turned
                break;
            }
            case"leftFwdOver":{
                leftFwdOverwing.togled=turned
                break;
            }
            case"rightFwdOver":{
                rightFwdOverwing.togled=turned
                break;
            }
            case"leftAFTOver":{
                leftAftOverwing.togled=turned
                break;
            }
            case"rightAFTOver":{
                rightAftOverwing.togled=turned
                break;
            }
            case"aftEntry":{
                aftEntry.togled=turned
                break;
            }
            case"aftService":{
                aftService.togled=turned
                break;
            }
            case"fwdCargo":{
                fwdCargo.togled=turned
                break;
            }
            case"aftCargo":{
                aftCargo.togled=turned
                break;
            }
            case"equip":{
                equip.togled=turned
                break;
            }
            default:{}
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 0
        y: -1
        width: 880
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"
        border.width: 2

        Image {
            id: image
            width: 481
            height: 499
            anchors.verticalCenter: parent.verticalCenter
            source: "../pic/planeDoors.png"
            anchors.horizontalCenterOffset: 2
            anchors.verticalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            clip: false
            scale: 1.8
            sourceSize.width: 764
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }

        ModuleDescription {
            id: moduleDescription
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "DOOR STATUS"
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 20
        }
        DoorIdicator {
           id: fwdService
           x: 516
           y: 219
           width: 98
           height: 61
           togled: false
           name: "FWD\nSERVICE"
        }

       DoorIdicator {
           id: leftFwdOverwing
           x: 287
           y: 426
           width: 98
           height: 61
           name: "LEFT FWD\nOVERWING"

       }

       DoorIdicator {
           id: rightFwdOverwing
           x: 516
           y: 426
           width: 98
           height: 61
           name: "RIGHT FWD\nOVERWING"

       }

       DoorIdicator {
           id: leftAftOverwing
           x: 287
           y: 500
           width: 98
           height: 61
           name: "LEFT AFT\nOVERWING"

       }

       DoorIdicator {
           id: rightAftOverwing
           x: 516
           y: 500
           width: 98
           height: 61
           name: "RIGHT AFT\nOVERWING"

       }

       DoorIdicator {
           id: aftService
           x: 516
           y: 751
           width: 98
           height: 61
           togled: true
           name: "AFT\nSERVICE"

       }

       DoorIdicator {
           id: aftEntry
           x: 287
           y: 751
           width: 98
           height: 61
           name: "AFT\nENTRY"

       }

       DoorIdicator {
           id: aftCargo
           x: 516
           y: 625
           width: 98
           height: 61
           name: "AFT\nCARGO"

       }

       DoorIdicator {
           id: fwdCargo
           x: 516
           y: 299
           width: 98
           height: 61
           name: "FWD\nCARGO"

       }

       DoorIdicator {
           id: equip
           x: 287
           y: 625
           width: 98
           height: 61
           name: "EQUIP"

       }

       DoorIdicator {
           id: fwdEntry
           x: 287
           y: 219
           width: 98
           height: 61
           name: "FWD\nENTRY"
       }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:1}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}
D{i:11}D{i:12}D{i:13}D{i:14}D{i:15}D{i:2}
}
##^##*/
