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
                door1.visible=turned
                break;
            }
            case"fwdService":{
                fwdService.togled=turned
                door2.visible=turned
                break;
            }
            case"leftFwdOver":{
                leftFwdOverwing.togled=turned
                door3.visible=turned
                break;
            }
            case"rightFwdOver":{
                rightFwdOverwing.togled=turned
                door4.visible=turned
                break;
            }
            case"leftAFTOver":{
                leftAftOverwing.togled=turned
                door5.visible=turned
                break;
            }
            case"rightAFTOver":{
                rightAftOverwing.togled=turned
                door6.visible=turned
                break;
            }
            case"aftEntry":{
                aftEntry.togled=turned
                door7.visible=turned
                break;
            }
            case"aftService":{
                aftService.togled=turned
                door8.visible=turned
                break;
            }
            case"fwdCargo":{
                fwdCargo.togled=turned
                door9.visible=turned
                break;
            }
            case"aftCargo":{
                aftCargo.togled=turned
                door10.visible=turned
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
        y: 0
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"
        antialiasing: true
        layer.samples: 8
        layer.enabled: true
        Image {
            id: image
            anchors.fill: parent
            source: "../pic/doors/base.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door1
            anchors.fill: parent
            source: "../pic/doors/door1.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door2
            anchors.fill: parent
            source: "../pic/doors/door2.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door3
            anchors.fill: parent
            source: "../pic/doors/door3.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door4
            anchors.fill: parent
            source: "../pic/doors/door4.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door5
            anchors.fill: parent
            source: "../pic/doors/door5.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door6
            anchors.fill: parent
            source: "../pic/doors/door6.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door7
            anchors.fill: parent
            source: "../pic/doors/door7.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door8
            anchors.fill: parent
            source: "../pic/doors/door8.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door9
            anchors.fill: parent
            source: "../pic/doors/door9.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: door10
            x: 589
            anchors.fill: parent
            source: "../pic/doors/door10.png"
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
           x: 527
           y: 162
           width: 98
           height: 61
           togled: false
           name: "FWD\nSERVICE"
        }

       DoorIdicator {
           id: leftFwdOverwing
           x: 247
           y: 426
           width: 98
           height: 61
           name: "LEFT FWD\nOVERWING"

       }

       DoorIdicator {
           id: rightFwdOverwing
           x: 527
           y: 426
           width: 98
           height: 61
           name: "RIGHT FWD\nOVERWING"

       }

       DoorIdicator {
           id: leftAftOverwing
           x: 247
           y: 500
           width: 98
           height: 61
           name: "LEFT AFT\nOVERWING"

       }

       DoorIdicator {
           id: rightAftOverwing
           x: 527
           y: 500
           width: 98
           height: 61
           name: "RIGHT AFT\nOVERWING"

       }

       DoorIdicator {
           id: aftService
           x: 527
           y: 808
           width: 98
           height: 61
           togled: true
           name: "AFT\nSERVICE"

       }

       DoorIdicator {
           id: aftEntry
           x: 247
           y: 808
           width: 98
           height: 61
           name: "AFT\nENTRY"

       }

       DoorIdicator {
           id: aftCargo
           x: 527
           y: 625
           width: 98
           height: 61
           name: "AFT\nCARGO"

       }

       DoorIdicator {
           id: fwdCargo
           x: 527
           y: 275
           width: 98
           height: 61
           name: "FWD\nCARGO"

       }

       DoorIdicator {
           id: equip
           x: 247
           y: 625
           width: 98
           height: 61
           name: "EQUIP"

       }

       DoorIdicator {
           id: fwdEntry
           x: 247
           y: 162
           width: 98
           height: 61
           name: "FWD\nENTRY"
       }
    }

}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:3}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}D{i:23}
D{i:24}D{i:25}D{i:2}
}
##^##*/
