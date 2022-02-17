import QtQuick
import QtQuick.Controls
import "../componets"
Item {
    id:bleedAirMod
    width: 1750
    height: 1060
    Rectangle {
        id: rectangle
        color: "#000000"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Swich2stateBasic {
            id: lRecricrFan
            x: 47
            y: 39
            swich2state.textWidthDescription: 25
            swich2state.onText: "AUTO"
            swich2state.description: "L RECIRC\nFAN"
            onClicked:{
                ControlBleed.togleRecircFan("l")
            }
        }

        Swich2stateBasic {
            id: rRecrircFan
            x: 1553
            y: 39
            swich2state.textWidthDescription: 25
            swich2state.togled: false
            swich2state.onText: "AUTO"
            swich2state.description: "R RECIRC\nFAN"
            onClicked:{
                ControlBleed.togleRecircFan("r")
            }
        }

        Swich2stateBasic {
            id: rBleedSw
            x: 1380
            y: 809
            swich2state.togled: false
            swich2state.description: "R ENG\nBLEED"
            onClicked:{
                ControlBleed.togleBleedSource("r")
            }
        }

        Image {
            id: image
            x: 16
            y: 760
            width: 146
            height: 286
            source: "../pic/engine.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: image1
            x: 1596
            y: 760
            width: 146
            height: 286
            source: "../pic/engine.svg"
            fillMode: Image.PreserveAspectFit
        }

        Row {
            id: row
            x: 653
            y: 36
            width: 444
            height: 242

            CircularDialPsi{
                id: lBleedPress

            }

            CircularDialPsi{
                id: rBleedPress

            }
        }

        Column {
            id: column
            x: 692
            y: 478
            width: 144
            height: 244

            WarningIndicator {
                id: rWarPack
                warText: "PACK"
            }

            WarningIndicator {
                id: lWinBodyBleed
                textHeight: 23
                warText: "WING BODY\nOVERHEAT"
            }

            WarningIndicator {
                id: lBleed
                warText: "BLEED"
            }
        }

        Column {
            id: column1
            x: 964
            y: 478
            width: 144
            height: 244
            WarningIndicator {
                id: lWarPack
                warText: "PACK"
            }

            WarningIndicator {
                id: rWinBodyBleed
                textHeight: 23
                warText: "WING BODY\nOVERHEAT"
            }

            WarningIndicator {
                id: rBleed
                warText: "BLEED"
            }
        }

        Row {
            id: row1
            x: 230
            y: 809
            width: 446
            height: 164

            Swich2stateBasic {
                id: lBleedSw
                swich2state.description: "L ENG\nBLEED"
                onClicked:{
                    ControlBleed.togleBleedSource("l")
                }
            }

            WarningIndicator {
                id: dualBleed
                height: 85
                warText: "DUAL\nBLEED"
            }

            Swich2stateBasic {
                id: apuBleedSw
                swich2state.togled: false
                swich2state.description: "APU\nBLEED"
                onClicked:{
                    ControlBleed.togleBleedSource("apu")
                }
            }

        }

        Rectangle {
            id: rectangle3
            x: 1102
            y: 809
            width: 144
            height: 150
            color: "#ffffff"
            Text {
                id: text3
                text: "EXTERNAL\nSOURCE"
                anchors.fill: parent
                font.pixelSize: 27
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 0
            }
        }

        Rectangle {
            id: rectangle4
            x: 55
            y: 322
            width: 142
            height: 118
            color: "#ffffff"
            Text {
                id: text4
                text: "WING\nANTI\nICE"
                anchors.fill: parent
                font.pixelSize: 44
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.6
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 0
            }
        }

        Rectangle {
            id: rectangle5
            x: 1561
            y: 322
            width: 142
            height: 118
            color: "#ffffff"
            Text {
                id: text5
                text: "WING\nANTI\nICE"
                anchors.fill: parent
                font.pixelSize: 44
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.6
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.rightMargin: 0
            }
        }

        Swich3posDes {
            id: isoVal
            x: 725
            y: 303
            descriptionTextW: 30
            textPos3: "OPEN"
            textPos1: "CLOSE"
            textWidth: 27
            description: "ISOLATION VALVE"

            butt1.onClicked:{
                ControlBleed.togleIsoValve(0)
            }
            butt2.onClicked:{
                ControlBleed.togleIsoValve(1)
            }
            butt3.onClicked:{
                ControlBleed.togleIsoValve(2)
            }

        }

        Swich3posDes {
            id: lPack
            x: 303
            y: 39
            width: 300
            height: 137
            position: 2
            textWidth: 27
            descriptionTextW: 34
            description: "LEFT PACK"
            textPos3: "HIGH"
            butt1.onClicked:{
                ControlBleed.toglePack("l",0)
            }
            butt2.onClicked:{
                ControlBleed.toglePack("l",1)
            }
            butt3.onClicked:{
                ControlBleed.toglePack("l",2)
            }
        }

        Swich3posDes {
            id: rPack
            x: 1147
            y: 39
            position: 0
            textWidth: 27
            textPos3: "HIGH"
            description: "RIGHT PACK"
            butt1.onClicked:{
                ControlBleed.toglePack("r",0)
            }
            butt2.onClicked:{
                ControlBleed.toglePack("r",1)
            }
            butt3.onClicked:{
                ControlBleed.toglePack("r",2)
            }
        }
    }

    Row {
        id: row2
        x: 176
        y: 40
        width: 200
        height: 400
    }
    Connections{
        target:ControlBleed

    }
    Connections{
        target:RenderBleed

        function onSetSwich(name,pos){
            switch(name){
                case"lPack":{
                    lPack.position=pos
                    break;
                }
                case"rPack":{
                    rPack.position=pos
                    break;
                }
                case"lFan":{
                    lRecricrFan.swich2state.togled=pos
                    break;
                }
                case"rFan":{
                    rRecrircFan.swich2state.togled=pos
                    break;
                }
                case"isoVal":{
                    isoVal.position=pos
                    break;
                }
                case"blAirL":{
                    lBleedSw.swich2state.togled=pos
                    break;
                }
                case"blAirR":{
                    rBleedSw.swich2state.togled=pos
                    break;
                }
                case"blAirApu":{
                    apuBleedSw.swich2state.togled=pos
                    break;
                }
                default:{}
            }
        }
        function onSetAnnunciator(name,state){
            switch(name){
                case"lPack":{
                    lWarPack.status=state
                    break;
                }
                case"rPack":{
                    rWarPack.status=state
                    break;
                }
                case"lBleed":{
                    lBleed.status=state
                    break;
                }
                case"rBleed":{
                    rBleed.status=state
                    break;
                }
                case"lWBO":{
                    lWinBodyBleed.status=state
                    break;
                }
                case"rWBO":{
                    rWinBodyBleed.status=state
                    break;
                }
                case"dBleed":{
                    dualBleed.status=state
                    break;
                }
                default:{}
            }
        }
        function onSetPressIndicator(name,value){
            if(name==="l")
                lBleedPress.value=value
            else if(name==="r")
                rBleedPress.value=value
        }
    }
}



/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}D{i:2}D{i:3}D{i:4}D{i:5}D{i:6}D{i:8}D{i:9}D{i:7}D{i:11}
D{i:12}D{i:13}D{i:10}D{i:15}D{i:16}D{i:17}D{i:14}D{i:19}D{i:20}D{i:21}D{i:18}D{i:23}
D{i:22}D{i:25}D{i:24}D{i:27}D{i:26}D{i:28}D{i:29}D{i:30}D{i:1}D{i:31}D{i:32}D{i:33}
}
##^##*/
