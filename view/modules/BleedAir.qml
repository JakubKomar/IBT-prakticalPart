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
        border.color: "#000000"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0

        Item {
            id: pipes
            anchors.fill: parent
            Rectangle {
                id: pipe9
                x: 1268
                y: 708
                width: 30
                color: "#ffffff"
                border.color: "#ffffff"
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.horizontalCenterOffset: 408
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.topMargin: 708
                anchors.bottomMargin: 230
            }

            Rectangle {
                id: pipe11
                y: 428
                width: 1446
                height: 30
                color: "#ffffff"
                border.color: "#ffffff"
                anchors.verticalCenter: parent.verticalCenter
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenterOffset: -87
            }

            Item {
                id: item2
                x: 1187
                y: 640
                width: 30
                height: 200
            }


            Item {
                id: item6
                y: 708
                width: 320
                height: 30
                anchors.left: parent.left
                anchors.leftMargin: 167
                Rectangle {
                    id: pipe10
                    height: 30
                    color: "#ffffff"
                    border.color: "#ffffff"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                }

                Rectangle {
                    id: pipe13
                    height: 30
                    color: "#ffffff"
                    border.color: "#ffffff"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenterOffset: 0
                    anchors.leftMargin: 1104
                    anchors.rightMargin: -1101
                }
            }

            Item {
                id: item3
                x: 457
                y: 708
                width: 30
                height: 138
                Rectangle {
                    id: pipe7
                    width: 30
                    color: "#ffffff"
                    border.color: "#ffffff"
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                }

                Rectangle {
                    id: pipe15
                    x: 1
                    width: 28
                    color: "#1e1e1e"
                    border.color: "#00ffffff"
                    border.width: 0
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 1
                    anchors.bottomMargin: 0
                }

                Rectangle {
                    id: pipe17
                    x: 812
                    y: 1
                    width: 28
                    height: 127
                    color: "#1e1e1e"
                    border.color: "#00ffffff"
                    border.width: 0
                }
            }




            Item {
                id: item4
                x: 167
                y: 185
                width: 30
                height: 661
                Rectangle {
                    id: pipe8
                    width: 30
                    color: "#ffffff"
                    border.color: "#ffffff"
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                }

                Rectangle {
                    id: pipe16
                    x: 1
                    width: 28
                    color: "#1e1e1e"
                    border.color: "#00ffffff"
                    border.width: 0
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 1
                    anchors.bottomMargin: -1
                }
            }

            Item {
                id: item5
                y: -288
                width: 30
                height: 1372
                anchors.horizontalCenter: parent.horizontalCenter
                rotation: 90
            }

            Rectangle {
                id: pipe18
                x: 170
                y: 709
                width: 316
                height: 28
                color: "#1e1e1e"
                border.color: "#00ffffff"
                border.width: 0
            }

            Item {
                id: item8
                x: 1561
                y: 197
                width: 30
                height: 627
                Rectangle {
                    id: pipe12
                    width: 30
                    color: "#ffffff"
                    border.color: "#ffffff"
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.horizontalCenterOffset: -3
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.topMargin: 0
                    anchors.bottomMargin: -8
                }

                Rectangle {
                    id: pipe20
                    x: -2
                    width: 28
                    color: "#1e1e1e"
                    border.color: "#00ffffff"
                    border.width: 0
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.topMargin: 0
                    anchors.bottomMargin: -8
                }
            }

            Item {
                id: item10
                y: 428
                width: 1474
                height: 30
                anchors.left: parent.left
                anchors.horizontalCenterOffset: 14
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.leftMargin: 152

                Rectangle {
                    id: pipe19
                    width: 26
                    height: 28
                    color: "#1e1e1e"
                    border.color: "#00ffffff"
                    border.width: 0
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.leftMargin: 0
                    anchors.rightMargin: 0
                }
            }
        }

        Rectangle {
            id: pipe21
            x: 1271
            y: 709
            width: 314
            height: 28
            color: "#1e1e1e"
            border.color: "#00ffffff"
            border.width: 0
        }

        Swich2stateBasic {
            id: lRecricrFan
            y: 39
            anchors.left: parent.left
            anchors.leftMargin: 417
            swich2state.onText: "AUTO"
            swich2state.description: "L RECIRC\nFAN"
            onClicked:{
                ControlBleed.togleRecircFan("l")
            }
        }

        Swich2stateBasic {
            id: rRecrircFan
            x: 1159
            y: 47
            anchors.right: parent.right
            anchors.rightMargin: 417
            swich2state.togled: false
            swich2state.onText: "AUTO"
            swich2state.description: "R RECIRC\nFAN"
            onClicked:{
                ControlBleed.togleRecircFan("r")
            }
        }

        Swich2stateBasic {
            id: rBleedSw
            x: 1504
            y: 825
            anchors.right: parent.right
            anchors.rightMargin: 105
            swich2state.togled: false
            swich2state.description: "R ENG\nBLEED"
            onClicked:{
                ControlBleed.togleBleedSource("r")
            }
        }

        Rectangle {
            id: rectangle1
            width: 460
            height: 321
            color: "#00ffffff"
            radius: 20
            border.color: "#00ffffff"
            border.width: 3
            anchors.top: parent.top
            anchors.horizontalCenterOffset: 1
            anchors.topMargin: 1
            anchors.horizontalCenter: parent.horizontalCenter

            CircularDialPsi{
                id: lBleedPress
                y: 0
                width: 223
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                units: "PSI"
                desText: "L Duck Press"
                anchors.leftMargin: 10
                anchors.topMargin: 5
                anchors.bottomMargin: 5

            }

            CircularDialPsi{
                id: rBleedPress
                x: 210
                y: 5
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                units: "PSI"
                desText: "R Duck Press"
                anchors.rightMargin: 10
                anchors.topMargin: 5
                anchors.bottomMargin: 5

            }
        }

        Row {
            id: row1
            y: 847
            width: 446
            height: 164
            anchors.left: parent.left
            anchors.leftMargin: 105

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
            x: 1214
            y: 830
            width: 144
            height: 150
            color: "#000000"
            radius: 10
            border.color: "#6a6a6a"
            border.width: 1
            Text {
                id: text3
                color: "#6a6a6a"
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
            y: 364
            width: 144
            height: 150
            color: "#00ffffff"
            radius: 10
            border.color: "#6a6a6a"
            border.width: 1
            anchors.left: parent.left
            anchors.leftMargin: 10
            Text {
                id: text4
                color: "#6a6a6a"
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
            x: 1598
            y: 364
            width: 144
            height: 150
            color: "#000000"
            radius: 10
            border.color: "#6a6a6a"
            border.width: 1
            anchors.right: parent.right
            anchors.rightMargin: 8
            Text {
                id: text5
                color: "#6a6a6a"
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
            y: 342
            height: 150
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
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
            x: 31
            y: 39
            width: 300
            height: 150
            position: 0
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
            x: 1425
            y: 47
            width: 300
            height: 150
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

        Rectangle {
            id: rectangle2
            x: 645
            y: 594
            width: 460
            height: 466
            color: "#00ffffff"
            radius: 20
            border.color: "#ffffff"
            border.width: 1
            anchors.top: parent.top
            anchors.topMargin: 594
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter

            Item {
                id: row2
                x: 39
                y: 45
                width: 385
                height: 245
                anchors.horizontalCenterOffset: 1
                anchors.horizontalCenter: parent.horizontalCenter

                Column {
                    id: column
                    width: 144
                    height: 244

                    WarningIndicator {
                        id: rWarPack
                        height: 70
                        warText: "PACK"
                    }

                    WarningIndicator {
                        id: lWinBodyBleed
                        height: 70
                        textHeight: 23
                        warText: "WING BODY\nOVERHEAT"
                    }

                    WarningIndicator {
                        id: lBleed
                        height: 70
                        warText: "BLEED"
                    }
                }

                Column {
                    id: column1
                    width: 144
                    height: 244
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    WarningIndicator {
                        id: lWarPack
                        height: 70
                        warText: "PACK"
                    }

                    WarningIndicator {
                        id: rWinBodyBleed
                        height: 70
                        textHeight: 23
                        warText: "WING BODY\nOVERHEAT"
                    }

                    WarningIndicator {
                        id: rBleed
                        height: 70
                        warText: "BLEED"
                    }
                }
            }
        }

        CircleButton{
            y: 719 ;
            text: "";
            buttText: "TRIP\nRESET";
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                ControlBleed.bleedTripReset()
            }
        }

        CircleButton {
            y: 907
            buttText: "OVHT\nTEST"
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                ControlBleed.tripButtTest()
            }

        }

        ModuleDescription {
            id: moduleDescription
            x: 534
            y: 8
            description: "BLEED AIR"
        }




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
    D{i:0;formeditorZoom:0.5}D{i:3}D{i:4}D{i:5}D{i:7}D{i:8}D{i:6}D{i:10}D{i:11}D{i:12}
D{i:9}D{i:14}D{i:15}D{i:13}D{i:16}D{i:17}D{i:19}D{i:20}D{i:18}D{i:22}D{i:21}D{i:2}
D{i:23}D{i:24}D{i:25}D{i:26}D{i:28}D{i:29}D{i:27}D{i:31}D{i:32}D{i:33}D{i:30}D{i:35}
D{i:34}D{i:37}D{i:36}D{i:39}D{i:38}D{i:40}D{i:41}D{i:42}D{i:46}D{i:47}D{i:48}D{i:45}
D{i:50}D{i:51}D{i:52}D{i:49}D{i:44}D{i:43}D{i:53}D{i:54}D{i:55}D{i:1}D{i:56}D{i:57}
}
##^##*/
