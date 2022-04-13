/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-04-13 20:55:28
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
        target:ControlDoors
    }

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
        function onSetSwich(name, val){
            switch(name){
            case"noSmoke":{
                noSmoking.position=val
                break;
            }
            case"seatBelts":{
                fastenBelts.position=val
                break;
            }
            case"entryLight":{
                entryLights.togled=val===1
                break;
            }
            case"paxLighting":{
                lightPas.position=val
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

    HalfTransparentBorder {
        id: halfTransparentBorder
        width: 1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        grad2: "gray"
        vert: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: 0
        anchors.bottomMargin: 0
    }

    Swich3posVert {
        id: noSmoking
        y: 166
        width: 100
        height: 240
        anchors.left: halfTransparentBorder.right
        anchors.leftMargin: 200
        button1.onClicked:{ControlDoors.setSwich("noSmoking",0)}
        button2.onClicked:{ControlDoors.setSwich("noSmoking",1)}
        button3.onClicked:{ControlDoors.setSwich("noSmoking",2)}
    }

    Swich3posVert {
        id: fastenBelts
        x: 1448
        y: 166
        width: 100
        height: 240
        anchors.right: parent.right
        anchors.rightMargin: 200
        button1.onClicked:{ControlDoors.setSeatBealts(fastenBelts.position,0)}
        button2.onClicked:{ControlDoors.setSeatBealts(fastenBelts.position,1)}
        button3.onClicked:{ControlDoors.setSeatBealts(fastenBelts.position,2)}
    }

    ModuleDescription {
        id: moduleDescription1
        x: 874
        width: 876
        height: 30
        anchors.top: parent.top
        anchors.topMargin: 0
        description: "PASSeNGER indicators"
    }

    ModuleDescription {
        id: moduleDescription2
        x: 874
        y: 543
        width: 876
        height: 30
        description: "PASSeNGER LIGHTS"

    }

    TextCust {
        id: textCust
        x: 1402
        y: 121
        text: "FASTEN belts"
        level: 2
        color:Styles.blueDark
    }

    TextCust {
        id: textCust1
        x: 1037
        y: 121
        text: "NO SMOKING"
        level: 2
        color:Styles.blueDark
    }

    TextCust {
        id: textCust2
        x: 997
        y: 716
        text: "PASSENGER AREA"
        level: 2
        color:Styles.blueDark
    }

    TextCust {
        id: textCust3
        x: 1420
        y: 716
        text: "ENTRY AREA"
        level: 2
        color:Styles.blueDark
    }

    Swich2stateAlt {
        id: entryLights
        x: 1389
        y: 771
        width: 235
        height: 117
        turnOnBcCol: "#000000"
        turnOffBcCol: "#000000"
        textOff: "BRIGHT"
        textOn: "MEDIUM"
        button1.onClicked:{ControlDoors.setSwich("entryLight",0)}
        button2.onClicked:{ControlDoors.setSwich("entryLight",1)}
    }

    LightPas {
        id: lightPas
        x: 964
        y: 771
        width: 314
        height: 117
        position: 3
        itemOfset: 124
        onLeftEvent: {ControlDoors.setSwich("paxLight",lightPas.position-1)}
        onRightEvent: {ControlDoors.setSwich("paxLight",lightPas.position+1)}
    }

}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:2}D{i:4}D{i:5}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}D{i:23}
D{i:24}D{i:25}D{i:26}D{i:3}D{i:27}D{i:28}D{i:29}D{i:30}D{i:31}D{i:32}D{i:33}D{i:34}
D{i:35}D{i:36}D{i:37}
}
##^##*/
