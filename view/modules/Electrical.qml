/*
  * @ Project: GUI for Boing 737 MAX 10 plane over xPlane 11 simulator.
  * @ Author: Jakub Komárek
  * @ Licence: MIT
  * @ Modified by: Jakub Komárek
  * @ Modified time: 2022-03-29 01:15:18
  * @ Description: electrical module
 */

import QtQuick
import QtQuick.Shapes
import QtQuick.Controls
import "../componets"

Rectangle {
    id:tempControl
    width: 1750
    height: 1060
    
    color: "#000000"
    border.color: "#000000"

    Connections{
        target:ControlElectrical
    }
    
    HalfTransparentBorder {
        id: halfTransparentBorder
        x: 1320
        width: 1
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        grad2: "GRAY"
        anchors.topMargin: 0
        anchors.horizontalCenterOffset: 0
        anchors.bottomMargin: 0
        vert: true
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Connections{
        target:RenderElectrical
        function onIndicatorUpdate(name, value){
            switch(name){
            case "source1":
                sourceOff1.sourceOff.status=value
                break;
            case "source2":
                sourceOff2.sourceOff.status=value
                break;
            case "bus1":
                sourceOff1.trBussOff.status=value
                break;
            case "bus2":
                sourceOff2.trBussOff.status=value
                break;
            case "grp":
                grdPower.infoIndicator.status=value
                break;
            case "gen1":
                gen1Mod.infoIndicator.status=value
                break;
            case "gen2":
                gen2Mod.infoIndicator.status=value
                break;
            case "apuGen":
                apuGenMod.infoIndicator.status=value
                break;
            default:
                break;
            }
        }
        
        function onSwichUpdate(name, value){
            switch(name){
            case "cross_tie":
                busTransfer.swich2stateAlt.togled=value
                break;
            case "ifePassSeat":
                ifePassSeat.swich2state.togled=value
                break;
            case "cabUtil":
                cabUtil.swich2state.togled=value
                break;
            default:
                break;
            }
        }
        
        function onGuardUpdate(name, value){
            switch(name){
            case "busTransferCover":
                busTransfer.guard.guarded=value
                break;
            default:
                break;
            }
        }

        function onSendElData(name, value){
            switch(name){
            case "stbyFreq":
                acStnVals.freq=value
                break;
            case "grdFreq":
                grdPwrVals.freq=value
                break;
            case "gen1Freq":
                gen1Vals.freq=value
                break;
            case "apuFreq":
                apu1Vals.freq=value
                break;
            case "gen2Freq":
                gen2Vals.freq=value
                break;
            case "invFreq":
                inverterVals.freq=value
                break;
            case "stbyVolt":
                acStnVals.volts=value
                break;
            case "grdVolt":
                grdPwrVals.volts=value
                break;
            case "gen1Volt":
                gen1Vals.volts=value
                break;
            case "apuVolt":
                apu1Vals.volts=value
                break;
            case "gen2Volt":
                gen2Vals.volts=value
                break;
            case "invVolt":
                inverterVals.volts=value
                break;
            case "gen1Amp":
                gen1Vals.amps=value
                break;
            case "gen2Amp":
                gen2Vals.amps=value
                break;
            case "apuGenAmp":
                apu1Vals.amps=value
                break;
            case "dcStbVolt":
                dcStbyVals.volts=value
                break;
            case "batVolt":
                batVals.volts=value
                break;
            case "batBusVolt":
                batBusVals.volts=value
                break;
            case "tr1Volt":
                tr1Vals.volts=value
                break;
            case "tr1Amp":
                tr1Vals.amps=value
                break;
            case "tr2Volt":
                tr2Vals.volts=value
                break;
            case "tr2Amp":
                tr2Vals.amps=value
                break;
            case "tr3Volt":
                tr3Vals.volts=value
                break;
            case "tr3Amp":
                tr3Vals.amps=value
                break;
            case "batAmp":
                batVals.amps=value
                break;
            default:
                break;
            }
        }
    }

    Rectangle {
        id: leftSide
        x: parent.width/2
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"
        border.width: 2
        
        Item {
            id: pipes
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.bottomMargin: 61
            anchors.leftMargin: 0
            anchors.topMargin: -163

            Rectangle {
                id: rectangle14
                x: 116
                y: 426
                width: 10
                height: 526
                color: Styles.blue
            }

            Rectangle {
                id: rectangle34
                x: 730
                y: 426
                width: 10
                height: 526
                color: Styles.blue
            }

            Rectangle {
                id: rectangle35
                x: 411
                y: 370
                width: 10
                height: 112
                color: Styles.blue
            }

            Rectangle {
                id: rectangle36
                x: 535
                y: 319
                width: 10
                height: 169
                color: Styles.blue
            }

            Rectangle {
                id: rectangle38
                x: 160
                y: 644
                width: 564
                height: 10
                color: Styles.blue
            }

            Circle {
                id: circle11
                x: 109
                y: 935
                width: 25
                height: 25
                rectangle.color: "#00b9ff"
            }

            Circle {
                id: circle12
                x: 722
                y: 935
                width: 25
                height: 25
                rectangle.color: "#00b9ff"
            }

            Rectangle {
                id: rectangle39
                x: 567
                y: 942
                width: 170
                height: 10
                color: Styles.blue
            }

            Rectangle {
                id: rectangle40
                x: 122
                y: 942
                width: 183
                height: 10
                color: Styles.blue
            }

            Rectangle {
                id: rectangle44
                x: 472
                y: 478
                width: 10
                height: 197
                color: Styles.blue
            }

            Rectangle {
                id: rectangle45
                x: 472
                y: 478
                width: 73
                height: 10
                color: Styles.blue
            }

            Rectangle {
                id: rectangle37
                x: 285
                y: 370
                width: 10
                height: 112
                color: Styles.blue
            }

            Rectangle {
                id: rectangle47
                x: 285
                y: 473
                width: 136
                height: 10
                color: Styles.blue
            }

            HalfTransparentBorder {
                id: halfTransparentBorder1
                x: 730
                y: 952
                width: 10
                height: 425
                grad2: "#000096ff"
                grad1: "#00afff"
                vert: true
            }

            HalfTransparentBorder {
                id: halfTransparentBorder2
                x: 116
                y: 952
                width: 10
                height: 425
                grad2: "#000096ff"
                vert: true
                grad1: "#00afff"
            }

            Arrow {
                id: arrow28
                x: 195
                y: 629
                width: 40
                height: 40
                rotation: 90
            }

            Arrow {
                id: arrow29
                x: 654
                y: 927
                width: 40
                height: 40
                rotation: 90
            }

            Arrow {
                id: arrow25
                x: 715
                y: 576
                width: 40
                height: 40
            }

            Arrow {
                id: arrow26
                x: 457
                y: 505
                width: 40
                height: 40
            }

            Rectangle {
                id: rectangle48
                x: 352
                y: 473
                width: 10
                height: 181
                color: Styles.blue
            }

            Arrow {
                id: arrow27
                x: 337
                y: 505
                width: 40
                height: 40
            }

            Arrow {
                id: arrow30
                x: 626
                y: 629
                width: 40
                height: 40
                rotation: -90
            }

            Arrow {
                id: arrow31
                x: 160
                y: 927
                width: 40
                height: 40
                rotation: -90
            }







        }

        Arrow {
            id: arrow24
            x: 101
            y: 413
            width: 40
            height: 40
        }

        Swich2noStateGen {
            id: grdPower
            x: 379
            y: 87
            width: 130
            height: 200
            textCol: "#ffffff"
            infoIndicator.textHeight: 23
            infoIndicator.description: "GRD POWER\nAVAILABLE"
            anchors.horizontalCenterOffset: 126
            anchors.horizontalCenter: parent.horizontalCenter
            button1.onClicked:{
                ControlElectrical.togle("gpu_up")
            }
            button2.onClicked:{
                ControlElectrical.togle("gpu_dn")
            }
        }

        Swich2noStateGen {
            id: gen1Mod
            y: 165
            width: 130
            height: 200
            anchors.left: parent.left
            textCol: "#ffffff"
            anchors.leftMargin: 59
            button1.onClicked:{
                ControlElectrical.togle("gen1_up")
            }
            button2.onClicked:{
                ControlElectrical.togle("gen1_dn")
            }
        }
        
        Swich2noStateGen {
            id: gen2Mod
            x: 623
            y: 165
            width: 130
            height: 200
            anchors.right: parent.right
            textCol: "#ffffff"
            anchors.rightMargin: 73
            infoIndicator.description: "GEN 2\nOFFBUS"
            button1.onClicked:{
                ControlElectrical.togle("gen2_up")
            }
            button2.onClicked:{
                ControlElectrical.togle("gen2_dn")
            }
        }
        
        SwichesApuGen {
            id: apuGenMod
            y: 87
            width: 248
            height: 200
            textCol: "#ffffff"
            anchors.horizontalCenterOffset: -83
            anchors.horizontalCenter: parent.horizontalCenter
            button1.onClicked:{
                ControlElectrical.togle("apu_gen1_up")
            }
            button2.onClicked:{
                ControlElectrical.togle("apu_gen1_dn")
            }
            button3.onClicked:{
                ControlElectrical.togle("apu_gen2_up")
            }
            button4.onClicked:{
                ControlElectrical.togle("apu_gen2_dn")
            }
        }
        
        BusGraphRepr {
            id: sourceOff2
            x: 666
            y: 452
            width: 143
            height: 188
            anchors.right: parent.right
            anchors.rightMargin: 67
            busText: "AC BUS 2"
        }
        
        BusGraphRepr {
            id: sourceOff1
            y: 452
            width: 143
            height: 188
            anchors.left: parent.left
            anchors.leftMargin: 53
            busText: "AC BUS 1"
        }
        
        Rectangle {
            id: rectangle6
            y: 381
            width: 249
            height: 168
            color: "#000000"
            radius: 14
            border.color: "#7f7f7f"
            anchors.horizontalCenterOffset: -7
            anchors.horizontalCenter: parent.horizontalCenter
            
            TextCust {
                id: text4
                y: 0
                width: 248
                height: 40
                color: "#ffffff"
                text: qsTr("BUS TRANSFER")
                font.letterSpacing: -1.5
                level:2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.horizontalCenter: parent.horizontalCenter
                font.family: "Verdana"
                
                GuardedSwichAlt {
                    id: busTransfer
                    y: 36
                    guard.guardBorderCol: "#808080"
                    clip: true
                    swich2stateAlt.textHeight: 23
                    swich2stateAlt.textOn: "AUTO"
                    anchors.horizontalCenter: parent.horizontalCenter
                    guard.onGuard:{
                        ControlElectrical.setGuard("busTransfer")
                    }
                    guard.onUnGuard:{
                        ControlElectrical.setGuard("busTransfer")
                    }
                    swich2stateAlt.button1.onClicked:{
                        ControlElectrical.togle("busTransfer_off")
                    }
                    swich2stateAlt.button2.onClicked:{
                        ControlElectrical.togle("busTransfer_on")
                        ControlElectrical.setGuard("busTransfer")
                    }
                }
            }
        }

        ModuleDescription {
            id: moduleDescription
            x: 8
            y: -111
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "ELECTRICAL distribution CONTROL"
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0
        }

        Swich2stateBasic {
            id: cabUtil
            x: 200
            y: 703
            anchors.right: parent.right
            anchors.rightMargin: 527
            swich2state.description: "CAB\nUTIL"
            onClicked:{ControlElectrical.togle("cab_util")}

        }

        Swich2stateBasic {
            id: ifePassSeat
            y: 703
            anchors.left: parent.left
            anchors.leftMargin: 504
            swich2state.description: "IFE/PASS\nSEAT"
            onClicked:{ControlElectrical.togle("ife")}
        }

        ModuleDescription {
            id: moduleDescription1
            x: -1748
            y: 0
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            description: "ELECTRICAL overview"
            anchors.rightMargin: 873
            anchors.topMargin: 0
            anchors.leftMargin: -873
        }






    }
    
    Rectangle {
        id: rightSide
        x: 0
        y: 0
        width: parent.width/2
        height: parent.height
        color: "#00ffffff"
        border.color: "#00ffffff"
        border.width: 2

        Item {
            id: item1
            anchors.fill: parent

            Circle {
                id: circle13
                x: 547
                y: 577
                rectangle.color: "#fffb00"

                Circle {
                    id: circle14
                    x: 4
                    y: 4
                    width: 42
                    height: 42
                    rectangle.color: "#000000"
                }

                Rectangle {
                    id: rectangle15
                    y: 0
                    height: 25
                    color: "#000000"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                }
            }

            Rectangle {
                id: rectangle4
                x: 95
                y: 156
                width: 4
                height: 621
                color: Styles.blue
            }

            Rectangle {
                id: rectangle5
                x: 781
                y: 155
                width: 4
                height: 286
                color: Styles.blue
            }

            Rectangle {
                id: rectangle7
                x: 159
                y: 254
                width: 578
                height: 4
                color: Styles.blue
            }

            Rectangle {
                id: rectangle8
                x: 305
                y: 155
                width: 4
                height: 102
                color: Styles.blue
            }

            Rectangle {
                id: rectangle9
                x: 565
                y: 155
                width: 4
                height: 102
                color: Styles.blue
            }

            Rectangle {
                id: rectangle10
                x: 305
                y: 556
                width: 4
                height: 391
                color: "#fffb00"
            }

            Arrow {
                id: arrow1
                x: 557
                y: 234
            }

            Rectangle {
                id: rectangle11
                x: 781
                y: 556
                width: 4
                height: 95
                color: "#fffb00"
            }



            Rectangle {
                id: rectangle16
                x: 95
                y: 855
                width: 4
                height: 92
                color: "#fffb00"
            }



            Rectangle {
                id: rectangle17
                x: 95
                y: 942
                width: 629
                height: 4
                color: "#fffb00"
            }



            Rectangle {
                id: rectangle20
                x: 95
                y: 372
                width: 465
                height: 4
                color: Styles.blue
            }



            Rectangle {
                id: rectangle21
                x: 305
                y: 372
                width: 4
                height: 147
                color: Styles.blue
            }



            Rectangle {
                id: rectangle22
                x: 583
                y: 372
                width: 4
                height: 147
                color: Styles.blue
            }



            Rectangle {
                id: rectangle23
                x: 583
                y: 372
                width: 202
                height: 4
                color: Styles.blue
            }



            Rectangle {
                id: rectangle24
                x: 556
                y: 372
                width: 4
                height: 147
                color: Styles.blue
            }



            Rectangle {
                id: rectangle25
                x: 305
                y: 602
                width: 246
                height: 4
                color: "#fffb00"
            }



            Rectangle {
                id: rectangle30
                x: 95
                y: 301
                width: 135
                height: 4
                color: Styles.blue
            }



            Rectangle {
                id: rectangle31
                x: 95
                y: 341
                width: 135
                height: 4
                color: Styles.blue
            }



            Rectangle {
                id: rectangle32
                x: 646
                y: 301
                width: 139
                height: 4
                color: Styles.blue
            }



            Rectangle {
                id: rectangle33
                x: 646
                y: 341
                width: 139
                height: 4
                color: Styles.blue
            }



            Rectangle {
                id: rectangle12
                x: 570
                y: 541
                width: 4
                height: 464
                color: "#fffb00"
            }


            Arrow {
                id: arrow2
                x: 773
                y: 223
            }

            Arrow {
                id: arrow3
                x: 87
                y: 223
            }

            Arrow {
                id: arrow4
                x: 169
                y: 246
                rotation: 90
            }

            Arrow {
                id: arrow5
                x: 685
                y: 246
                rotation: -90
            }

            Arrow {
                id: arrow6
                x: 745
                y: 293
                rotation: 90
            }

            Arrow {
                id: arrow7
                x: 745
                y: 333
                rotation: 90
            }

            Arrow {
                id: arrow8
                x: 111
                y: 293
                rotation: -90
            }

            Arrow {
                id: arrow9
                x: 111
                y: 333
                rotation: -90
            }

            Arrow {
                id: arrow10
                x: 297
                y: 413
            }

            Arrow {
                id: arrow11
                x: 549
                y: 413
            }

            Arrow {
                id: arrow12
                x: 575
                y: 413
            }

            Arrow {
                id: arrow13
                x: 773
                y: 413
            }

            Arrow {
                id: arrow14
                x: 87
                y: 560
            }

            Arrow {
                id: arrow15
                x: 87
                y: 705
                rotation: 180
            }

            Arrow {
                id: arrow16
                x: 297
                y: 630
                col: "#fffb00"
            }

            Arrow {
                id: arrow17
                x: 773
                y: 630
                col: "#fffb00"
            }

            Circle {
                id: circle1
                x: 775
                y: 596
                width: 16
                height: 16
                rectangle.color: "#fffb00"
            }

            Circle {
                id: circle
                x: 299
                y: 596
                width: 16
                height: 16
                rectangle.color: "#fffb00"
            }

            Circle {
                id: circle2
                x: 299
                y: 936
                width: 16
                height: 16
                rectangle.color: "#fffb00"
            }

            Circle {
                id: circle3
                x: 564
                y: 936
                width: 16
                height: 16
                rectangle.color: "#fffb00"
            }

            Circle {
                id: circle4
                x: 775
                y: 366
                width: 16
                height: 16
                rectangle.color: "#00b9ff"
            }

            Circle {
                id: circle5
                x: 775
                y: 335
                width: 16
                height: 16
                rectangle.color: "#00b9ff"
            }

            Circle {
                id: circle6
                x: 775
                y: 295
                width: 16
                height: 16
                rectangle.color: "#00b9ff"
            }

            Circle {
                id: circle7
                x: 89
                y: 365
                width: 16
                height: 16
                rectangle.color: "#00b9ff"
            }

            Circle {
                id: circle8
                x: 89
                y: 334
                width: 16
                height: 16
                rectangle.color: "#00b9ff"
            }

            Circle {
                id: circle9
                x: 89
                y: 294
                width: 16
                height: 16
                rectangle.color: "#00b9ff"
            }

            Circle {
                id: circle10
                x: 299
                y: 367
                width: 16
                height: 16
                rectangle.color: "#00b9ff"
            }

            Arrow {
                id: arrow18
                x: 297
                y: 746
                col: "#fffb00"
            }

            Arrow {
                id: arrow19
                x: 562
                y: 746
                col: "#fffb00"
            }

            Arrow {
                id: arrow20
                x: 562
                y: 980
                col: "#fffb00"
            }

            Arrow {
                id: arrow21
                x: 562
                y: 894
                rotation: 180
                col: "#fffb00"
            }

            Arrow {
                id: arrow22
                x: 297
                y: 894
                rotation: 180
                col: "#fffb00"
            }

            Arrow {
                id: arrow23
                x: 87
                y: 893
                col: "#fffb00"
                rotation: 180
            }

            Rectangle {
                id: rectangle41
                x: 593
                y: 602
                width: 192
                height: 4
                color: "#fffb00"
            }

            Rectangle {
                id: rectangle18
                x: 525
                y: 551
                width: 4
                height: 55
                color: "#fffb00"
            }

            Arrow {
                id: arrow32
                x: 517
                y: 582
                col: "#fffb00"
            }

            Rectangle {
                id: rectangle19
                x: 713
                y: 862
                width: 24
                height: 21
                color: "#700000"
                border.color: "gray"

                Text {
                    id: text1
                    color: "#ffffff"
                    text: qsTr("+")
                    anchors.fill: parent
                    font.pixelSize: 31
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottomMargin: 7
                }
            }

            Rectangle {
                id: rectangle42
                x: 823
                y: 862
                width: 24
                height: 21
                color: "#000000"
                border.color: "gray"

                Text {
                    id: text2
                    color: "#ffffff"
                    text: qsTr("-")
                    anchors.fill: parent
                    font.pixelSize: 31
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.bottomMargin: 7
                }
            }

            Arrow {
                id: arrow
                x: 297
                y: 234
            }












        }

        GenValues {
            id: gen1Vals
            x: 20
            y: 80
            width: 150
            height: 129
            text: "GEN 1"
            isGenerator: true
        }

        GenValues {
            id: apu1Vals
            x: 230
            y: 52
            width: 150
            height: 129
            text: "APU GEN"
            isGenerator: true
        }

        GenValues {
            id: grdPwrVals
            x: 491
            y: 52
            width: 150
            height: 129
            text: "GRD PWR"
            isGenerator: true
            ampsEneb: false
        }

        GenValues {
            id: gen2Vals
            x: 708
            y: 80
            width: 150
            height: 129
            text: "GEN 2"
            anchors.right: parent.right
            isGenerator: true
            anchors.rightMargin: 20
        }

        GenValues {
            id: tr1Vals
            y: 432
            width: 150
            height: 129
            text: "TR 1"
            anchors.left: parent.left
            freqEneb: false
            anchors.leftMargin: 230
        }

        GenValues {
            id: batVals
            x: 708
            y: 881
            width: 150
            height: 129
            text: "BATTERY"
            anchors.right: parent.right
            freqEneb: false
            anchors.rightMargin: 20
        }

        GenValues {
            id: tr3Vals
            x: 716
            y: 432
            width: 150
            height: 129
            text: "TR 3"
            anchors.right: parent.right
            freqEneb: false
            anchors.rightMargin: 20
        }

        GenValues {
            id: dcStbyVals
            x: 230
            y: 766
            width: 150
            height: 129
            text: "DC STBY"
            freqEneb: false
            ampsEneb: false
        }

        GenValues {
            id: batBusVals
            x: 491
            y: 766
            width: 150
            height: 129
            text: "BATT BUS"
            anchors.right: parent.right
            freqEneb: false
            ampsEneb: false
            anchors.rightMargin: 234
        }

        GenValues {
            id: tr2Vals
            x: 491
            y: 432
            width: 150
            height: 129
            text: "TR 2"
            anchors.right: parent.right
            freqEneb: false
            anchors.rightMargin: 230
        }

        GenValues {
            id: acStnVals
            x: 20
            y: 579
            width: 150
            height: 129
            text: "AC STN BUS"
            volts: 117
            voltsEneb: true
            ampsEneb: false
        }

        GenValues {
            id: inverterVals
            x: 20
            y: 766
            width: 150
            height: 129
            text: "INVErter"
            ampsEneb: false
        }

        Rectangle {
            id: rectangle
            x: 20
            y: 242
            width: 150
            height: 30
            color: "#000000"
            radius: 9
            border.color: "#808080"

            TextCust {
                id: textCust
                x: 20
                color: "#ffffff"
                text: "AC BUS 1"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                level: 3
            }
        }

        Rectangle {
            id: rectangle1
            x: 732
            y: 242
            width: 150
            height: 30
            color: "#000000"
            radius: 9
            border.color: "gray"
            anchors.right: parent.right
            anchors.rightMargin: 20
            TextCust {
                id: textCust1
                color: "#ffffff"
                text: "AC BUS 2"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level: 3
            }
        }

        Rectangle {
            id: rectangle2
            x: 707
            y: 649
            width: 150
            height: 30
            color: "#000000"
            radius: 9
            border.color: "#808080"
            anchors.right: parent.right
            anchors.rightMargin: 18
            TextCust {
                id: textCust2
                color: "#ffffff"
                text: "DC BUS 2"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level: 3
            }
        }

        Rectangle {
            id: rectangle3
            x: 232
            y: 649
            width: 150
            height: 30
            color: "#000000"
            radius: 9
            border.color: "#808080"
            TextCust {
                id: textCust3
                x: 230
                color: "#ffffff"
                text: "DC BUS 1"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level: 3
            }
        }

        Rectangle {
            id: rectangle26
            y: 328
            width: 150
            height: 30
            color: "#000000"
            radius: 9
            border.color: "#808080"
            anchors.left: parent.left
            anchors.leftMargin: 130
            TextCust {
                id: textCust5
                color: "#ffffff"
                text: "AC MAIN BUS 1"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                level: 3
            }
        }

        Rectangle {
            id: rectangle27
            y: 287
            width: 150
            height: 30
            color: "#000000"
            radius: 9
            border.color: "#808080"
            anchors.left: parent.left
            anchors.leftMargin: 130
            TextCust {
                id: textCust6
                color: "#ffffff"
                text: "GALLEY BUS C,D"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                level: 3
            }
        }

        Rectangle {
            id: rectangle28
            x: 596
            y: 327
            width: 150
            height: 30
            color: "#000000"
            radius: 9
            border.color: "#808080"
            anchors.right: parent.right
            anchors.rightMargin: 129
            TextCust {
                id: textCust7
                color: "#ffffff"
                text: "AC MAIN BUS 2"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                level: 3
            }
        }

        Rectangle {
            id: rectangle29
            x: 596
            y: 287
            width: 150
            height: 30
            color: "#000000"
            radius: 9
            border.color: "#808080"
            anchors.right: parent.right
            anchors.rightMargin: 129
            TextCust {
                id: textCust8
                color: "#ffffff"
                text: "GALLEY BUS A,B"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.bottomMargin: 0
                level: 3
            }
        }

        Rectangle {
            id: rectangle13
            x: 496
            y: 999
            width: 150
            height: 30
            color: "#000000"
            radius: 9
            border.color: "#808080"
            TextCust {
                id: textCust4
                color: "#ffffff"
                text: "HOT BATT BUS"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                level: 3
            }
        }













    }




}





/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:1}D{i:2}D{i:3}D{i:6}D{i:7}D{i:8}D{i:9}D{i:10}D{i:11}
D{i:12}D{i:13}D{i:14}D{i:15}D{i:16}D{i:17}D{i:18}D{i:19}D{i:20}D{i:21}D{i:22}D{i:23}
D{i:24}D{i:25}D{i:26}D{i:27}D{i:28}D{i:5}D{i:29}D{i:30}D{i:31}D{i:32}D{i:33}D{i:34}
D{i:35}D{i:38}D{i:37}D{i:36}D{i:39}D{i:40}D{i:41}D{i:42}D{i:4}D{i:46}D{i:47}D{i:45}
D{i:48}D{i:49}D{i:50}D{i:51}D{i:52}D{i:53}D{i:54}D{i:55}D{i:56}D{i:57}D{i:58}D{i:59}
D{i:60}D{i:61}D{i:62}D{i:63}D{i:64}D{i:65}D{i:66}D{i:67}D{i:68}D{i:69}D{i:70}D{i:71}
D{i:72}D{i:73}D{i:74}D{i:75}D{i:76}D{i:77}D{i:78}D{i:79}D{i:80}D{i:81}D{i:82}D{i:83}
D{i:84}D{i:85}D{i:86}D{i:87}D{i:88}D{i:89}D{i:90}D{i:91}D{i:92}D{i:93}D{i:94}D{i:95}
D{i:96}D{i:97}D{i:98}D{i:99}D{i:100}D{i:101}D{i:102}D{i:103}D{i:104}D{i:106}D{i:105}
D{i:108}D{i:107}D{i:109}D{i:44}D{i:110}D{i:111}D{i:112}D{i:113}D{i:114}D{i:115}D{i:116}
D{i:117}D{i:118}D{i:119}D{i:120}D{i:121}D{i:123}D{i:122}D{i:125}D{i:124}D{i:127}D{i:126}
D{i:129}D{i:128}D{i:131}D{i:130}D{i:133}D{i:132}D{i:135}D{i:134}D{i:137}D{i:136}D{i:139}
D{i:138}D{i:43}
}
##^##*/
