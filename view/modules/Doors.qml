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
                fwdEntry.swich2state.togled=turned
                break;
            }
            case"fwdService":{
                fwdService.swich2state.togled=turned
                break;
            }
            case"leftFwdOver":{
                leftFwdOverwing.swich2state.togled=turned
                break;
            }
            case"rightFwdOver":{
                rightFwdOverwing.swich2state.togled=turned
                break;
            }
            case"leftAFTOver":{
                leftAftOverwing.swich2state.togled=turned
                break;
            }
            case"rightAFTOver":{
                rightAftOverwing.swich2state.togled=turned
                break;
            }
            case"aftEntry":{
                aftEntry.swich2state.togled=turned
                break;
            }
            case"aftService":{
                aftService.swich2state.togled=turned
                break;
            }
            case"fwdCargo":{
                fwdCargo.swich2state.togled=turned
                break;
            }
            case"aftCargo":{
                aftCargo.swich2state.togled=turned
                break;
            }
            case"equip":{
                equip.swich2state.togled=turned
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
        border.color: "#ffffff"
        border.width: 2

        Image {
            id: image
            x: 181
            y: -20
            width: 486
            height: 1056
            source: "../pic/plane.png"
            clip: false
            scale: 1.8
            sourceSize.width: 764
            rotation: -180
            fillMode: Image.PreserveAspectFit

            Rectangle {
                id: rectangle1
                x: 122
                y: 669
                width: 90
                height: 2
                color: "#ffffff"
            }

            Rectangle {
                id: rectangle2
                x: 120
                y: 419
                width: 90
                height: 2
                color: "#ffffff"
            }
        }

        DoorIdicator {
            id: fwdService
            x: 436
            y: 44
            width: 141
            height: 137
            swich2state.description: "FWD\nSERVICE"
        }

        DoorIdicator {
            id: leftFwdOverwing
            x: 298
            y: 340
            width: 141
            height: 137
            swich2state.textWidthDescription: 19
            swich2state.description: "LEFT FWD\nOVERWING"

        }

        DoorIdicator {
            id: rightFwdOverwing
            x: 436
            y: 340
            width: 141
            height: 137
            swich2state.textWidthDescription: 19
            swich2state.description: "RIGHT FWD\nOVERWING"

        }

        DoorIdicator {
            id: leftAftOverwing
            x: 298
            y: 475
            width: 141
            height: 137
            swich2state.textWidthDescription: 19
            swich2state.description: "LEFT AFT\nOVERWING"

        }

        DoorIdicator {
            id: rightAftOverwing
            x: 436
            y: 475
            width: 141
            height: 137
            swich2state.textWidthDescription: 19
            swich2state.description: "RIGHT AFT\nOVERWING"

        }

        DoorIdicator {
            id: aftService
            x: 436
            y: 758
            width: 141
            height: 137
            swich2state.description: "AFT\nSERVICE"

        }

        DoorIdicator {
            id: aftEntry
            x: 298
            y: 758
            width: 141
            height: 137
            swich2state.description: "AFT\nENTRY"

        }

        DoorIdicator {
            id: aftCargo
            x: 644
            y: 651
            width: 141
            height: 137
            swich2state.description: "AFT\nCARGO"

        }

        DoorIdicator {
            id: fwdCargo
            x: 644
            y: 201
            width: 141
            height: 137
            swich2state.description: "FWD\nCARGO"

        }

        DoorIdicator {
            id: equip
            x: 104
            y: 625
            width: 141
            height: 137
            swich2state.description: "EQUIP"

        }

        DoorIdicator {
            id: fwdEntry
            x: 298
            y: 44
            width: 141
            height: 137
            swich2state.description: "FWD\nENTRY"
        }
    }

    Guarded3Swich {
        id: guarded3Swich
        x: 938
        y: 62

        WarningIndicator {
            id: warningIndicator
            x: 113
            y: 111
        }
    }

    Swich3pos {
        id: swich3pos
        x: 961
        y: 362
    }

    Swich3pos {
        id: swich3pos1
        x: 1355
        y: 362
    }

    CircleButton {
        id: circleButton
        x: 1074
        y: 653
    }

    CircleButton {
        id: circleButton1
        x: 1410
        y: 652
    }

    WarningIndicator {
        id: warningIndicator1
        x: 1435
        y: 78
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.25}D{i:1}D{i:4}D{i:5}D{i:3}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}
D{i:11}D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:2}D{i:18}D{i:17}D{i:19}D{i:20}D{i:21}
D{i:22}D{i:23}
}
##^##*/
